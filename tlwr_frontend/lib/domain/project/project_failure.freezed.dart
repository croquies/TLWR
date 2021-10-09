// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectFailureTearOff {
  const _$ProjectFailureTearOff();

  _ErrorWithMessage errorWithMessage(String message) {
    return _ErrorWithMessage(
      message,
    );
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _UserIsUnAuthenticated userIsUnAuthenticated() {
    return const _UserIsUnAuthenticated();
  }
}

/// @nodoc
const $ProjectFailure = _$ProjectFailureTearOff();

/// @nodoc
mixin _$ProjectFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() unexpected,
    required TResult Function() userIsUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorWithMessage value) errorWithMessage,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserIsUnAuthenticated value)
        userIsUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFailureCopyWith<$Res> {
  factory $ProjectFailureCopyWith(
          ProjectFailure value, $Res Function(ProjectFailure) then) =
      _$ProjectFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectFailureCopyWithImpl<$Res>
    implements $ProjectFailureCopyWith<$Res> {
  _$ProjectFailureCopyWithImpl(this._value, this._then);

  final ProjectFailure _value;
  // ignore: unused_field
  final $Res Function(ProjectFailure) _then;
}

/// @nodoc
abstract class _$ErrorWithMessageCopyWith<$Res> {
  factory _$ErrorWithMessageCopyWith(
          _ErrorWithMessage value, $Res Function(_ErrorWithMessage) then) =
      __$ErrorWithMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorWithMessageCopyWithImpl<$Res>
    extends _$ProjectFailureCopyWithImpl<$Res>
    implements _$ErrorWithMessageCopyWith<$Res> {
  __$ErrorWithMessageCopyWithImpl(
      _ErrorWithMessage _value, $Res Function(_ErrorWithMessage) _then)
      : super(_value, (v) => _then(v as _ErrorWithMessage));

  @override
  _ErrorWithMessage get _value => super._value as _ErrorWithMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorWithMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorWithMessage implements _ErrorWithMessage {
  const _$_ErrorWithMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectFailure.errorWithMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorWithMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorWithMessageCopyWith<_ErrorWithMessage> get copyWith =>
      __$ErrorWithMessageCopyWithImpl<_ErrorWithMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() unexpected,
    required TResult Function() userIsUnAuthenticated,
  }) {
    return errorWithMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
  }) {
    return errorWithMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
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
    required TResult Function(_ErrorWithMessage value) errorWithMessage,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserIsUnAuthenticated value)
        userIsUnAuthenticated,
  }) {
    return errorWithMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
  }) {
    return errorWithMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
    required TResult orElse(),
  }) {
    if (errorWithMessage != null) {
      return errorWithMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorWithMessage implements ProjectFailure {
  const factory _ErrorWithMessage(String message) = _$_ErrorWithMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorWithMessageCopyWith<_ErrorWithMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ProjectFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ProjectFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() unexpected,
    required TResult Function() userIsUnAuthenticated,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorWithMessage value) errorWithMessage,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserIsUnAuthenticated value)
        userIsUnAuthenticated,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ProjectFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$UserIsUnAuthenticatedCopyWith<$Res> {
  factory _$UserIsUnAuthenticatedCopyWith(_UserIsUnAuthenticated value,
          $Res Function(_UserIsUnAuthenticated) then) =
      __$UserIsUnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserIsUnAuthenticatedCopyWithImpl<$Res>
    extends _$ProjectFailureCopyWithImpl<$Res>
    implements _$UserIsUnAuthenticatedCopyWith<$Res> {
  __$UserIsUnAuthenticatedCopyWithImpl(_UserIsUnAuthenticated _value,
      $Res Function(_UserIsUnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UserIsUnAuthenticated));

  @override
  _UserIsUnAuthenticated get _value => super._value as _UserIsUnAuthenticated;
}

/// @nodoc

class _$_UserIsUnAuthenticated implements _UserIsUnAuthenticated {
  const _$_UserIsUnAuthenticated();

  @override
  String toString() {
    return 'ProjectFailure.userIsUnAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserIsUnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorWithMessage,
    required TResult Function() unexpected,
    required TResult Function() userIsUnAuthenticated,
  }) {
    return userIsUnAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
  }) {
    return userIsUnAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorWithMessage,
    TResult Function()? unexpected,
    TResult Function()? userIsUnAuthenticated,
    required TResult orElse(),
  }) {
    if (userIsUnAuthenticated != null) {
      return userIsUnAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorWithMessage value) errorWithMessage,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserIsUnAuthenticated value)
        userIsUnAuthenticated,
  }) {
    return userIsUnAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
  }) {
    return userIsUnAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorWithMessage value)? errorWithMessage,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserIsUnAuthenticated value)? userIsUnAuthenticated,
    required TResult orElse(),
  }) {
    if (userIsUnAuthenticated != null) {
      return userIsUnAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UserIsUnAuthenticated implements ProjectFailure {
  const factory _UserIsUnAuthenticated() = _$_UserIsUnAuthenticated;
}
