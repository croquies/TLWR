part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String? email) = EmailChanged;
  const factory AuthFormEvent.passwordChanged(String? password) =
      PasswordChanged;
  const factory AuthFormEvent.confirmPasswordChanged(String? confirmPassword) =
      ConfirmPasswordChanged;
  const factory AuthFormEvent.signUpWithEmailAndPasswordPressed() =
      SignUpWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithGithubPressed() =
      SignInWithGithubPressed;
  const factory AuthFormEvent.signInWithDemo() = SignInWithDemo;
}
