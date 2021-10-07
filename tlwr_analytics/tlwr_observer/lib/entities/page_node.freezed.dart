// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageNodeTearOff {
  const _$PageNodeTearOff();

  _PageNode call(
      {required String path,
      String? className,
      Map<String, dynamic>? additionalInfo}) {
    return _PageNode(
      path: path,
      className: className,
      additionalInfo: additionalInfo,
    );
  }
}

/// @nodoc
const $PageNode = _$PageNodeTearOff();

/// @nodoc
mixin _$PageNode {
  String get path => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageNodeCopyWith<PageNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageNodeCopyWith<$Res> {
  factory $PageNodeCopyWith(PageNode value, $Res Function(PageNode) then) =
      _$PageNodeCopyWithImpl<$Res>;
  $Res call(
      {String path, String? className, Map<String, dynamic>? additionalInfo});
}

/// @nodoc
class _$PageNodeCopyWithImpl<$Res> implements $PageNodeCopyWith<$Res> {
  _$PageNodeCopyWithImpl(this._value, this._then);

  final PageNode _value;
  // ignore: unused_field
  final $Res Function(PageNode) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? className = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$PageNodeCopyWith<$Res> implements $PageNodeCopyWith<$Res> {
  factory _$PageNodeCopyWith(_PageNode value, $Res Function(_PageNode) then) =
      __$PageNodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String path, String? className, Map<String, dynamic>? additionalInfo});
}

/// @nodoc
class __$PageNodeCopyWithImpl<$Res> extends _$PageNodeCopyWithImpl<$Res>
    implements _$PageNodeCopyWith<$Res> {
  __$PageNodeCopyWithImpl(_PageNode _value, $Res Function(_PageNode) _then)
      : super(_value, (v) => _then(v as _PageNode));

  @override
  _PageNode get _value => super._value as _PageNode;

  @override
  $Res call({
    Object? path = freezed,
    Object? className = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_PageNode(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_PageNode implements _PageNode {
  const _$_PageNode({required this.path, this.className, this.additionalInfo});

  @override
  final String path;
  @override
  final String? className;
  @override
  final Map<String, dynamic>? additionalInfo;

  @override
  String toString() {
    return 'PageNode(path: $path, className: $className, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageNode &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)) &&
            (identical(other.additionalInfo, additionalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.additionalInfo, additionalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(className) ^
      const DeepCollectionEquality().hash(additionalInfo);

  @JsonKey(ignore: true)
  @override
  _$PageNodeCopyWith<_PageNode> get copyWith =>
      __$PageNodeCopyWithImpl<_PageNode>(this, _$identity);
}

abstract class _PageNode implements PageNode {
  const factory _PageNode(
      {required String path,
      String? className,
      Map<String, dynamic>? additionalInfo}) = _$_PageNode;

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String? get className => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageNodeCopyWith<_PageNode> get copyWith =>
      throw _privateConstructorUsedError;
}
