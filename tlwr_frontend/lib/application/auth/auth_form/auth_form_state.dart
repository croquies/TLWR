part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required String email,
    required String password,
    required String confirmPassword,
    required String title,
    required String message,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        email: '',
        password: '',
        confirmPassword: '',
        title: '',
        message: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
