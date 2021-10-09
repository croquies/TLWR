import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_failure.freezed.dart';

@freezed
class ProjectFailure with _$ProjectFailure {
  const factory ProjectFailure.errorWithMessage(String message) =
      _ErrorWithMessage;
  const factory ProjectFailure.unexpected() = _Unexpected;
  const factory ProjectFailure.userIsUnAuthenticated() = _UserIsUnAuthenticated;
}
