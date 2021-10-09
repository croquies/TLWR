import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/project/project_bloc.dart';
import 'package:tlwr_frontend/application/project/project_form/project_form_bloc.dart';
import 'package:tlwr_frontend/application/project/project_validator_mixin.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_text.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_alert_dialog.dart';

class ProjectForm extends HookWidget with ProjectValidatorMixin {
  const ProjectForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = useMemoized(() => MediaQuery.of(context).size);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return BlocProvider<ProjectFormBloc>(
      create: (_) => getIt<ProjectFormBloc>(),
      child: BlocConsumer<ProjectFormBloc, ProjectFormState>(
        listener: (context, state) {
          if (state.isSubmitted) {
            Navigator.pop(context);
          }
          state.projectFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                showDialog(
                  context: context,
                  builder: (context) => TLWRAlertDialog(
                    description: failure.map(
                      errorWithMessage: (error) => error.message,
                      userIsUnAuthenticated: (_) =>
                          'Sign in is required for this action.',
                      unexpected: (_) => 'Unexpected error is occured.',
                    ),
                  ),
                );
              },
              (_) {},
            ),
          );
        },
        builder: (context, state) {
          return AlertDialog(
            content: SizedBox(
              width: size.width *
                  getValueForScreenType<double>(
                    context: context,
                    mobile: 0.8,
                    tablet: 0.8,
                    desktop: 0.45,
                  ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TLWRText.heading2('Create your project!'),
                    const SizedBox(height: 10),
                    TLWRInputFormField(
                      autofocus: true,
                      placeholder: 'Project name',
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.done,
                      validator: projectNameValidator,
                      onChanged: (value) => context
                          .read<ProjectFormBloc>()
                          .add(ProjectFormEvent.nameChanged(value)),
                    ),
                    const SizedBox(height: 30),
                    TLWRButton(
                      title: 'Create new project',
                      loading: state.isLoading,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        if (formKey.currentState?.validate() ?? false) {
                          context
                              .read<ProjectFormBloc>()
                              .add(const ProjectFormEvent.create());
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
