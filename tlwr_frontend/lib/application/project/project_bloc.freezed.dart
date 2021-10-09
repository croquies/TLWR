// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectEventTearOff {
  const _$ProjectEventTearOff();

  _Delete delete(String projectId) {
    return _Delete(
      projectId,
    );
  }

  _List list() {
    return const _List();
  }
}

/// @nodoc
const $ProjectEvent = _$ProjectEventTearOff();

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId) delete,
    required TResult Function() list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res> implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  final ProjectEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEvent) _then;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({String projectId});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? projectId = freezed,
  }) {
    return _then(_Delete(
      projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.projectId);

  @override
  final String projectId;

  @override
  String toString() {
    return 'ProjectEvent.delete(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId) delete,
    required TResult Function() list,
  }) {
    return delete(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
  }) {
    return delete?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ProjectEvent {
  const factory _Delete(String projectId) = _$_Delete;

  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListCopyWith<$Res> {
  factory _$ListCopyWith(_List value, $Res Function(_List) then) =
      __$ListCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
    implements _$ListCopyWith<$Res> {
  __$ListCopyWithImpl(_List _value, $Res Function(_List) _then)
      : super(_value, (v) => _then(v as _List));

  @override
  _List get _value => super._value as _List;
}

/// @nodoc

class _$_List implements _List {
  const _$_List();

  @override
  String toString() {
    return 'ProjectEvent.list()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _List);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId) delete,
    required TResult Function() list,
  }) {
    return list();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
  }) {
    return list?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List implements ProjectEvent {
  const factory _List() = _$_List;
}

/// @nodoc
class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  _ProjectState call(
      {required bool isLoading,
      required List<Project>? projects,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) {
    return _ProjectState(
      isLoading: isLoading,
      projects: projects,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ProjectState = _$ProjectStateTearOff();

/// @nodoc
mixin _$ProjectState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Project>? get projects => throw _privateConstructorUsedError;
  Option<Either<ProjectFailure, Unit>> get projectFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Project>? projects,
      Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption});
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? projects = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption == freezed
          ? _value.projectFailureOrSuccessOption
          : projectFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectStateCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$ProjectStateCopyWith(
          _ProjectState value, $Res Function(_ProjectState) then) =
      __$ProjectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Project>? projects,
      Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption});
}

/// @nodoc
class __$ProjectStateCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$ProjectStateCopyWith<$Res> {
  __$ProjectStateCopyWithImpl(
      _ProjectState _value, $Res Function(_ProjectState) _then)
      : super(_value, (v) => _then(v as _ProjectState));

  @override
  _ProjectState get _value => super._value as _ProjectState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? projects = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProjectState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption == freezed
          ? _value.projectFailureOrSuccessOption
          : projectFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProjectState implements _ProjectState {
  const _$_ProjectState(
      {required this.isLoading,
      required this.projects,
      required this.projectFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Project>? projects;
  @override
  final Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProjectState(isLoading: $isLoading, projects: $projects, projectFailureOrSuccessOption: $projectFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)) &&
            (identical(other.projectFailureOrSuccessOption,
                    projectFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.projectFailureOrSuccessOption,
                    projectFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(projects) ^
      const DeepCollectionEquality().hash(projectFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith =>
      __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState(
      {required bool isLoading,
      required List<Project>? projects,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) = _$_ProjectState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Project>? get projects => throw _privateConstructorUsedError;
  @override
  Option<Either<ProjectFailure, Unit>> get projectFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectStateCopyWith<_ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}
