// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ErrorWithMessage errorWithMessage(String message) {
    return ErrorWithMessage(
      message,
    );
  }

  EmailIsNotConfirmed emailIsNotConfirmed() {
    return const EmailIsNotConfirmed();
  }

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() emailIsNotConfirmed,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorWithMessage value) errorWithMessage,
    required TResult Function(EmailIsNotConfirmed value) emailIsNotConfirmed,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ErrorWithMessageCopyWith<$Res> {
  factory $ErrorWithMessageCopyWith(
          ErrorWithMessage value, $Res Function(ErrorWithMessage) then) =
      _$ErrorWithMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorWithMessageCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ErrorWithMessageCopyWith<$Res> {
  _$ErrorWithMessageCopyWithImpl(
      ErrorWithMessage _value, $Res Function(ErrorWithMessage) _then)
      : super(_value, (v) => _then(v as ErrorWithMessage));

  @override
  ErrorWithMessage get _value => super._value as ErrorWithMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorWithMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorWithMessage implements ErrorWithMessage {
  const _$ErrorWithMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.errorWithMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorWithMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorWithMessageCopyWith<ErrorWithMessage> get copyWith =>
      _$ErrorWithMessageCopyWithImpl<ErrorWithMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() emailIsNotConfirmed,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
  }) {
    return errorWithMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
  }) {
    return errorWithMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (errorWithMessage != null) {
      return errorWithMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorWithMessage value) errorWithMessage,
    required TResult Function(EmailIsNotConfirmed value) emailIsNotConfirmed,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
  }) {
    return errorWithMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
  }) {
    return errorWithMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (errorWithMessage != null) {
      return errorWithMessage(this);
    }
    return orElse();
  }
}

abstract class ErrorWithMessage implements AuthFailure {
  const factory ErrorWithMessage(String message) = _$ErrorWithMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorWithMessageCopyWith<ErrorWithMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailIsNotConfirmedCopyWith<$Res> {
  factory $EmailIsNotConfirmedCopyWith(
          EmailIsNotConfirmed value, $Res Function(EmailIsNotConfirmed) then) =
      _$EmailIsNotConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailIsNotConfirmedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailIsNotConfirmedCopyWith<$Res> {
  _$EmailIsNotConfirmedCopyWithImpl(
      EmailIsNotConfirmed _value, $Res Function(EmailIsNotConfirmed) _then)
      : super(_value, (v) => _then(v as EmailIsNotConfirmed));

  @override
  EmailIsNotConfirmed get _value => super._value as EmailIsNotConfirmed;
}

/// @nodoc

class _$EmailIsNotConfirmed implements EmailIsNotConfirmed {
  const _$EmailIsNotConfirmed();

  @override
  String toString() {
    return 'AuthFailure.emailIsNotConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailIsNotConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() emailIsNotConfirmed,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
  }) {
    return emailIsNotConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
  }) {
    return emailIsNotConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (emailIsNotConfirmed != null) {
      return emailIsNotConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorWithMessage value) errorWithMessage,
    required TResult Function(EmailIsNotConfirmed value) emailIsNotConfirmed,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
  }) {
    return emailIsNotConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
  }) {
    return emailIsNotConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emailIsNotConfirmed != null) {
      return emailIsNotConfirmed(this);
    }
    return orElse();
  }
}

abstract class EmailIsNotConfirmed implements AuthFailure {
  const factory EmailIsNotConfirmed() = _$EmailIsNotConfirmed;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() emailIsNotConfirmed,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorWithMessage value) errorWithMessage,
    required TResult Function(EmailIsNotConfirmed value) emailIsNotConfirmed,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() emailIsNotConfirmed,
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? emailIsNotConfirmed,
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorWithMessage value) errorWithMessage,
    required TResult Function(EmailIsNotConfirmed value) emailIsNotConfirmed,
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorWithMessage value)? errorWithMessage,
    TResult Function(EmailIsNotConfirmed value)? emailIsNotConfirmed,
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}
