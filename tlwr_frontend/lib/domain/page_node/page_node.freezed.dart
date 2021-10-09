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

PageNode _$PageNodeFromJson(Map<String, dynamic> json) {
  return _PageNode.fromJson(json);
}

/// @nodoc
class _$PageNodeTearOff {
  const _$PageNodeTearOff();

  _PageNode call(
      {required String id,
      required String path,
      @JsonKey(name: 'class_name') required String className,
      @JsonKey(name: 'project_id') required String projectId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'additional_info') Map<String, dynamic>? additionalInfo}) {
    return _PageNode(
      id: id,
      path: path,
      className: className,
      projectId: projectId,
      createdAt: createdAt,
      additionalInfo: additionalInfo,
    );
  }

  PageNode fromJson(Map<String, Object> json) {
    return PageNode.fromJson(json);
  }
}

/// @nodoc
const $PageNode = _$PageNodeTearOff();

/// @nodoc
mixin _$PageNode {
  String get id => throw _privateConstructorUsedError;
  String get path =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'class_name')
  String get className =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'project_id')
  String get projectId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  String? get createdAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'additional_info')
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageNodeCopyWith<PageNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageNodeCopyWith<$Res> {
  factory $PageNodeCopyWith(PageNode value, $Res Function(PageNode) then) =
      _$PageNodeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String path,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'project_id') String projectId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'additional_info') Map<String, dynamic>? additionalInfo});
}

/// @nodoc
class _$PageNodeCopyWithImpl<$Res> implements $PageNodeCopyWith<$Res> {
  _$PageNodeCopyWithImpl(this._value, this._then);

  final PageNode _value;
  // ignore: unused_field
  final $Res Function(PageNode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? className = freezed,
    Object? projectId = freezed,
    Object? createdAt = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String path,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'project_id') String projectId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'additional_info') Map<String, dynamic>? additionalInfo});
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
    Object? id = freezed,
    Object? path = freezed,
    Object? className = freezed,
    Object? projectId = freezed,
    Object? createdAt = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_PageNode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageNode implements _PageNode {
  const _$_PageNode(
      {required this.id,
      required this.path,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'project_id') required this.projectId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'additional_info') this.additionalInfo});

  factory _$_PageNode.fromJson(Map<String, dynamic> json) =>
      _$$_PageNodeFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'class_name')
  final String className;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'project_id')
  final String projectId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'additional_info')
  final Map<String, dynamic>? additionalInfo;

  @override
  String toString() {
    return 'PageNode(id: $id, path: $path, className: $className, projectId: $projectId, createdAt: $createdAt, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageNode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.additionalInfo, additionalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.additionalInfo, additionalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(className) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(additionalInfo);

  @JsonKey(ignore: true)
  @override
  _$PageNodeCopyWith<_PageNode> get copyWith =>
      __$PageNodeCopyWithImpl<_PageNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageNodeToJson(this);
  }
}

abstract class _PageNode implements PageNode {
  const factory _PageNode(
      {required String id,
      required String path,
      @JsonKey(name: 'class_name')
          required String className,
      @JsonKey(name: 'project_id')
          required String projectId,
      @JsonKey(name: 'created_at')
          String? createdAt,
      @JsonKey(name: 'additional_info')
          Map<String, dynamic>? additionalInfo}) = _$_PageNode;

  factory _PageNode.fromJson(Map<String, dynamic> json) = _$_PageNode.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'project_id')
  String get projectId => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'additional_info')
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageNodeCopyWith<_PageNode> get copyWith =>
      throw _privateConstructorUsedError;
}
