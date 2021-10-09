// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EdgeTearOff {
  const _$EdgeTearOff();

  _Edge call({required Node from, required Node to, required int frequency}) {
    return _Edge(
      from: from,
      to: to,
      frequency: frequency,
    );
  }
}

/// @nodoc
const $Edge = _$EdgeTearOff();

/// @nodoc
mixin _$Edge {
  Node get from => throw _privateConstructorUsedError;
  Node get to => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EdgeCopyWith<Edge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeCopyWith<$Res> {
  factory $EdgeCopyWith(Edge value, $Res Function(Edge) then) =
      _$EdgeCopyWithImpl<$Res>;
  $Res call({Node from, Node to, int frequency});

  $NodeCopyWith<$Res> get from;
  $NodeCopyWith<$Res> get to;
}

/// @nodoc
class _$EdgeCopyWithImpl<$Res> implements $EdgeCopyWith<$Res> {
  _$EdgeCopyWithImpl(this._value, this._then);

  final Edge _value;
  // ignore: unused_field
  final $Res Function(Edge) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? frequency = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Node,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Node,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $NodeCopyWith<$Res> get from {
    return $NodeCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $NodeCopyWith<$Res> get to {
    return $NodeCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$EdgeCopyWith<$Res> implements $EdgeCopyWith<$Res> {
  factory _$EdgeCopyWith(_Edge value, $Res Function(_Edge) then) =
      __$EdgeCopyWithImpl<$Res>;
  @override
  $Res call({Node from, Node to, int frequency});

  @override
  $NodeCopyWith<$Res> get from;
  @override
  $NodeCopyWith<$Res> get to;
}

/// @nodoc
class __$EdgeCopyWithImpl<$Res> extends _$EdgeCopyWithImpl<$Res>
    implements _$EdgeCopyWith<$Res> {
  __$EdgeCopyWithImpl(_Edge _value, $Res Function(_Edge) _then)
      : super(_value, (v) => _then(v as _Edge));

  @override
  _Edge get _value => super._value as _Edge;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? frequency = freezed,
  }) {
    return _then(_Edge(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Node,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Node,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Edge implements _Edge {
  const _$_Edge(
      {required this.from, required this.to, required this.frequency});

  @override
  final Node from;
  @override
  final Node to;
  @override
  final int frequency;

  @override
  String toString() {
    return 'Edge(from: $from, to: $to, frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edge &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(frequency);

  @JsonKey(ignore: true)
  @override
  _$EdgeCopyWith<_Edge> get copyWith =>
      __$EdgeCopyWithImpl<_Edge>(this, _$identity);
}

abstract class _Edge implements Edge {
  const factory _Edge(
      {required Node from, required Node to, required int frequency}) = _$_Edge;

  @override
  Node get from => throw _privateConstructorUsedError;
  @override
  Node get to => throw _privateConstructorUsedError;
  @override
  int get frequency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EdgeCopyWith<_Edge> get copyWith => throw _privateConstructorUsedError;
}
