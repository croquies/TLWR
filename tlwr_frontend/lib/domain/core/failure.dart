import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unexpected() = Unexpected;
  const factory Failure.errorWithMessage({String? message}) = ErrorWithMessage;
}
