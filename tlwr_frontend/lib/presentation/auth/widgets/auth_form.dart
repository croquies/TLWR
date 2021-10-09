import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/application/auth/auth_form/auth_form_bloc.dart';
import 'package:tlwr_frontend/application/auth/auto_validator_mixin.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_text.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_alert_dialog.dart';

class AuthForm extends StatelessWidget with AuthValidatorMixin {
  const AuthForm({Key? key, this.signUp = false}) : super(key: key);

  final bool signUp;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showDialog(
                context: context,
                builder: (context) => TLWRAlertDialog(
                  description: failure.map(
                    errorWithMessage: (error) => error.message,
                    emailIsNotConfirmed: (_) =>
                        'Please check your email to complete sign up process.',
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                  ),
                ),
              ).then((value) => context.read<AuthFormBloc>().clearPassword());
            },
            (_) {
              context.beamToNamed(RouteNames.home);
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
        if (state.message.isNotEmpty) {
          showDialog(
            context: context,
            builder: (context) => TLWRAlertDialog(description: state.message),
          );
        }
      },
      builder: (BuildContext context, state) {
        final size = MediaQuery.of(context).size;

        return Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Center(
                  child: TLWRText.heading1(
                    signUp ? 'Sign up' : 'Sign in',
                  ),
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              width: size.width *
                  getValueForScreenType<double>(
                    context: context,
                    mobile: 0.8,
                    tablet: 0.8,
                    desktop: 0.45,
                  ),
              padding: const EdgeInsets.all(30),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TLWRInputFormField(
                      // autofocus: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: emailValidator,
                      placeholder: 'Email',
                      onChanged: (value) => context
                          .read<AuthFormBloc>()
                          .add(AuthFormEvent.emailChanged(value)),
                    ),
                    const SizedBox(height: 10),
                    TLWRInputFormField(
                      controller:
                          context.read<AuthFormBloc>().passwordController,
                      // autofocus: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction:
                          signUp ? TextInputAction.next : TextInputAction.done,
                      validator: passwordValidator,
                      password: true,
                      placeholder: 'Password',
                      onChanged: (value) => context
                          .read<AuthFormBloc>()
                          .add(AuthFormEvent.passwordChanged(value)),
                    ),
                    const SizedBox(height: 10),
                    if (signUp)
                      TLWRInputFormField(
                        controller: context
                            .read<AuthFormBloc>()
                            .confirmPasswordController,
                        // autofocus: true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        validator: (_) => confirmPasswordValidator(
                            state.confirmPassword, state.password),
                        password: true,
                        placeholder: 'Confirm password',
                        onChanged: (value) => context
                            .read<AuthFormBloc>()
                            .add(AuthFormEvent.confirmPasswordChanged(value)),
                      ),
                    const SizedBox(height: 20),
                    TLWRButton(
                      title: signUp ? 'Sign up' : 'Sign in',
                      loading: state.isSubmitting,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        if (signUp) {
                          context.read<AuthFormBloc>().add(const AuthFormEvent
                              .signUpWithEmailAndPasswordPressed());
                        } else {
                          context.read<AuthFormBloc>().add(const AuthFormEvent
                              .signInWithEmailAndPasswordPressed());
                        }
                      },
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
