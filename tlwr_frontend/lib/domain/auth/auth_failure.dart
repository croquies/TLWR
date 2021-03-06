import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.errorWithMessage(String message) = ErrorWithMessage;
  const factory AuthFailure.emailIsNotConfirmed() = EmailIsNotConfirmed;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
}
