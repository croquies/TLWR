import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/application/project/project_form/project_form_bloc.dart';
import 'package:tlwr_frontend/application/project/project_validator_mixin.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_text.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_alert_dialog.dart';

class ProjectForm extends HookWidget with ProjectValidatorMixin {
  const ProjectForm({Key? key, this.project}) : super(key: key);

  final Project? project;

  @override
  Widget build(BuildContext context) {
    final size = useMemoized(() => MediaQuery.of(context).size);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return BlocProvider<ProjectFormBloc>(
      create: (_) => getIt<ProjectFormBloc>(),
      child: BlocConsumer<ProjectFormBloc, ProjectFormState>(
        listener: (context, state) {
          if (project != null && state.selectedProjectId != project?.id) {
            context
                .read<ProjectFormBloc>()
                .add(ProjectFormEvent.projectSelected(project?.id));
          }
          state.projectFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  if (state.isSubmitted) {
                    Navigator.pop(context, false);
                  }
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
                (_) {
                  if (state.isSubmitted) {
                    Navigator.pop(context, true);
                  }
                },
              );
            },
          );
        },
        builder: (context, state) {
          final action = project == null ? 'Create' : 'Update';

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
                    TLWRText.heading2('$action your project!'),
                    const SizedBox(height: 10),
                    TLWRInputFormField(
                      initialValue: project?.name,
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
                      title: '$action project',
                      loading: state.isLoading,
                      disabled: state.isLoading,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        if (formKey.currentState?.validate() ?? false) {
                          if (project != null) {
                            context.read<ProjectFormBloc>().add(
                                ProjectFormEvent.update(
                                    project?.copyWith(name: state.name)));
                          } else {
                            context.read<AuthBloc>().getOptionOfUser().fold(
                              () => null,
                              (a) {
                                context.read<ProjectFormBloc>().add(
                                      ProjectFormEvent.create(
                                        Project(
                                          name: state.name,
                                          owner: a.id,
                                        ),
                                      ),
                                    );
                              },
                            );
                          }
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
