// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dynamic_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DynamicEventTearOff {
  const _$DynamicEventTearOff();

  _DynamicEvent call(
      {required String projectId, PageNode? from, required PageNode to}) {
    return _DynamicEvent(
      projectId: projectId,
      from: from,
      to: to,
    );
  }
}

/// @nodoc
const $DynamicEvent = _$DynamicEventTearOff();

/// @nodoc
mixin _$DynamicEvent {
  String get projectId => throw _privateConstructorUsedError;
  PageNode? get from => throw _privateConstructorUsedError;
  PageNode get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicEventCopyWith<DynamicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicEventCopyWith<$Res> {
  factory $DynamicEventCopyWith(
          DynamicEvent value, $Res Function(DynamicEvent) then) =
      _$DynamicEventCopyWithImpl<$Res>;
  $Res call({String projectId, PageNode? from, PageNode to});

  $PageNodeCopyWith<$Res>? get from;
  $PageNodeCopyWith<$Res> get to;
}

/// @nodoc
class _$DynamicEventCopyWithImpl<$Res> implements $DynamicEventCopyWith<$Res> {
  _$DynamicEventCopyWithImpl(this._value, this._then);

  final DynamicEvent _value;
  // ignore: unused_field
  final $Res Function(DynamicEvent) _then;

  @override
  $Res call({
    Object? projectId = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as PageNode?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as PageNode,
    ));
  }

  @override
  $PageNodeCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $PageNodeCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $PageNodeCopyWith<$Res> get to {
    return $PageNodeCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$DynamicEventCopyWith<$Res>
    implements $DynamicEventCopyWith<$Res> {
  factory _$DynamicEventCopyWith(
          _DynamicEvent value, $Res Function(_DynamicEvent) then) =
      __$DynamicEventCopyWithImpl<$Res>;
  @override
  $Res call({String projectId, PageNode? from, PageNode to});

  @override
  $PageNodeCopyWith<$Res>? get from;
  @override
  $PageNodeCopyWith<$Res> get to;
}

/// @nodoc
class __$DynamicEventCopyWithImpl<$Res> extends _$DynamicEventCopyWithImpl<$Res>
    implements _$DynamicEventCopyWith<$Res> {
  __$DynamicEventCopyWithImpl(
      _DynamicEvent _value, $Res Function(_DynamicEvent) _then)
      : super(_value, (v) => _then(v as _DynamicEvent));

  @override
  _DynamicEvent get _value => super._value as _DynamicEvent;

  @override
  $Res call({
    Object? projectId = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_DynamicEvent(
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as PageNode?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as PageNode,
    ));
  }
}

/// @nodoc

class _$_DynamicEvent implements _DynamicEvent {
  const _$_DynamicEvent({required this.projectId, this.from, required this.to});

  @override
  final String projectId;
  @override
  final PageNode? from;
  @override
  final PageNode to;

  @override
  String toString() {
    return 'DynamicEvent(projectId: $projectId, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DynamicEvent &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$DynamicEventCopyWith<_DynamicEvent> get copyWith =>
      __$DynamicEventCopyWithImpl<_DynamicEvent>(this, _$identity);
}

abstract class _DynamicEvent implements DynamicEvent {
  const factory _DynamicEvent(
      {required String projectId,
      PageNode? from,
      required PageNode to}) = _$_DynamicEvent;

  @override
  String get projectId => throw _privateConstructorUsedError;
  @override
  PageNode? get from => throw _privateConstructorUsedError;
  @override
  PageNode get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DynamicEventCopyWith<_DynamicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
