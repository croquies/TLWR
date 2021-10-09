// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectFormEventTearOff {
  const _$ProjectFormEventTearOff();

  _ProjectSelected projectSelected(String? projectId) {
    return _ProjectSelected(
      projectId,
    );
  }

  _NameChanged nameChanged(String? name) {
    return _NameChanged(
      name,
    );
  }

  _Create create() {
    return const _Create();
  }

  _Update update(Project? project) {
    return _Update(
      project,
    );
  }

  _CreateOrUpdateComplete createOrUpdateComplete() {
    return const _CreateOrUpdateComplete();
  }
}

/// @nodoc
const $ProjectFormEvent = _$ProjectFormEventTearOff();

/// @nodoc
mixin _$ProjectFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFormEventCopyWith<$Res> {
  factory $ProjectFormEventCopyWith(
          ProjectFormEvent value, $Res Function(ProjectFormEvent) then) =
      _$ProjectFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectFormEventCopyWithImpl<$Res>
    implements $ProjectFormEventCopyWith<$Res> {
  _$ProjectFormEventCopyWithImpl(this._value, this._then);

  final ProjectFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectFormEvent) _then;
}

/// @nodoc
abstract class _$ProjectSelectedCopyWith<$Res> {
  factory _$ProjectSelectedCopyWith(
          _ProjectSelected value, $Res Function(_ProjectSelected) then) =
      __$ProjectSelectedCopyWithImpl<$Res>;
  $Res call({String? projectId});
}

/// @nodoc
class __$ProjectSelectedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$ProjectSelectedCopyWith<$Res> {
  __$ProjectSelectedCopyWithImpl(
      _ProjectSelected _value, $Res Function(_ProjectSelected) _then)
      : super(_value, (v) => _then(v as _ProjectSelected));

  @override
  _ProjectSelected get _value => super._value as _ProjectSelected;

  @override
  $Res call({
    Object? projectId = freezed,
  }) {
    return _then(_ProjectSelected(
      projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProjectSelected implements _ProjectSelected {
  const _$_ProjectSelected(this.projectId);

  @override
  final String? projectId;

  @override
  String toString() {
    return 'ProjectFormEvent.projectSelected(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectSelected &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projectId);

  @JsonKey(ignore: true)
  @override
  _$ProjectSelectedCopyWith<_ProjectSelected> get copyWith =>
      __$ProjectSelectedCopyWithImpl<_ProjectSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) {
    return projectSelected(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) {
    return projectSelected?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) {
    return projectSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) {
    return projectSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(this);
    }
    return orElse();
  }
}

abstract class _ProjectSelected implements ProjectFormEvent {
  const factory _ProjectSelected(String? projectId) = _$_ProjectSelected;

  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProjectSelectedCopyWith<_ProjectSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'ProjectFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProjectFormEvent {
  const factory _NameChanged(String? name) = _$_NameChanged;

  String? get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create();

  @override
  String toString() {
    return 'ProjectFormEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ProjectFormEvent {
  const factory _Create() = _$_Create;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_Update(
      project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }

  @override
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.project);

  @override
  final Project? project;

  @override
  String toString() {
    return 'ProjectFormEvent.update(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) {
    return update(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) {
    return update?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProjectFormEvent {
  const factory _Update(Project? project) = _$_Update;

  Project? get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateOrUpdateCompleteCopyWith<$Res> {
  factory _$CreateOrUpdateCompleteCopyWith(_CreateOrUpdateComplete value,
          $Res Function(_CreateOrUpdateComplete) then) =
      __$CreateOrUpdateCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateOrUpdateCompleteCopyWithImpl<$Res>
    extends _$ProjectFormEventCopyWithImpl<$Res>
    implements _$CreateOrUpdateCompleteCopyWith<$Res> {
  __$CreateOrUpdateCompleteCopyWithImpl(_CreateOrUpdateComplete _value,
      $Res Function(_CreateOrUpdateComplete) _then)
      : super(_value, (v) => _then(v as _CreateOrUpdateComplete));

  @override
  _CreateOrUpdateComplete get _value => super._value as _CreateOrUpdateComplete;
}

/// @nodoc

class _$_CreateOrUpdateComplete implements _CreateOrUpdateComplete {
  const _$_CreateOrUpdateComplete();

  @override
  String toString() {
    return 'ProjectFormEvent.createOrUpdateComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateOrUpdateComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? projectId) projectSelected,
    required TResult Function(String? name) nameChanged,
    required TResult Function() create,
    required TResult Function(Project? project) update,
    required TResult Function() createOrUpdateComplete,
  }) {
    return createOrUpdateComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
  }) {
    return createOrUpdateComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? projectId)? projectSelected,
    TResult Function(String? name)? nameChanged,
    TResult Function()? create,
    TResult Function(Project? project)? update,
    TResult Function()? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (createOrUpdateComplete != null) {
      return createOrUpdateComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_CreateOrUpdateComplete value)
        createOrUpdateComplete,
  }) {
    return createOrUpdateComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
  }) {
    return createOrUpdateComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_CreateOrUpdateComplete value)? createOrUpdateComplete,
    required TResult orElse(),
  }) {
    if (createOrUpdateComplete != null) {
      return createOrUpdateComplete(this);
    }
    return orElse();
  }
}

abstract class _CreateOrUpdateComplete implements ProjectFormEvent {
  const factory _CreateOrUpdateComplete() = _$_CreateOrUpdateComplete;
}

/// @nodoc
class _$ProjectFormStateTearOff {
  const _$ProjectFormStateTearOff();

  _ProjectFormState call(
      {required String? selectedProjectId,
      required String name,
      required bool isLoading,
      required bool isSubmitted,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) {
    return _ProjectFormState(
      selectedProjectId: selectedProjectId,
      name: name,
      isLoading: isLoading,
      isSubmitted: isSubmitted,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ProjectFormState = _$ProjectFormStateTearOff();

/// @nodoc
mixin _$ProjectFormState {
  String? get selectedProjectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  Option<Either<ProjectFailure, Unit>> get projectFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectFormStateCopyWith<ProjectFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectFormStateCopyWith<$Res> {
  factory $ProjectFormStateCopyWith(
          ProjectFormState value, $Res Function(ProjectFormState) then) =
      _$ProjectFormStateCopyWithImpl<$Res>;
  $Res call(
      {String? selectedProjectId,
      String name,
      bool isLoading,
      bool isSubmitted,
      Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption});
}

/// @nodoc
class _$ProjectFormStateCopyWithImpl<$Res>
    implements $ProjectFormStateCopyWith<$Res> {
  _$ProjectFormStateCopyWithImpl(this._value, this._then);

  final ProjectFormState _value;
  // ignore: unused_field
  final $Res Function(ProjectFormState) _then;

  @override
  $Res call({
    Object? selectedProjectId = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? isSubmitted = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      selectedProjectId: selectedProjectId == freezed
          ? _value.selectedProjectId
          : selectedProjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption == freezed
          ? _value.projectFailureOrSuccessOption
          : projectFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProjectFormStateCopyWith<$Res>
    implements $ProjectFormStateCopyWith<$Res> {
  factory _$ProjectFormStateCopyWith(
          _ProjectFormState value, $Res Function(_ProjectFormState) then) =
      __$ProjectFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? selectedProjectId,
      String name,
      bool isLoading,
      bool isSubmitted,
      Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption});
}

/// @nodoc
class __$ProjectFormStateCopyWithImpl<$Res>
    extends _$ProjectFormStateCopyWithImpl<$Res>
    implements _$ProjectFormStateCopyWith<$Res> {
  __$ProjectFormStateCopyWithImpl(
      _ProjectFormState _value, $Res Function(_ProjectFormState) _then)
      : super(_value, (v) => _then(v as _ProjectFormState));

  @override
  _ProjectFormState get _value => super._value as _ProjectFormState;

  @override
  $Res call({
    Object? selectedProjectId = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? isSubmitted = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProjectFormState(
      selectedProjectId: selectedProjectId == freezed
          ? _value.selectedProjectId
          : selectedProjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      projectFailureOrSuccessOption: projectFailureOrSuccessOption == freezed
          ? _value.projectFailureOrSuccessOption
          : projectFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProjectFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProjectFormState implements _ProjectFormState {
  const _$_ProjectFormState(
      {required this.selectedProjectId,
      required this.name,
      required this.isLoading,
      required this.isSubmitted,
      required this.projectFailureOrSuccessOption});

  @override
  final String? selectedProjectId;
  @override
  final String name;
  @override
  final bool isLoading;
  @override
  final bool isSubmitted;
  @override
  final Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProjectFormState(selectedProjectId: $selectedProjectId, name: $name, isLoading: $isLoading, isSubmitted: $isSubmitted, projectFailureOrSuccessOption: $projectFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectFormState &&
            (identical(other.selectedProjectId, selectedProjectId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProjectId, selectedProjectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSubmitted, isSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitted, isSubmitted)) &&
            (identical(other.projectFailureOrSuccessOption,
                    projectFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.projectFailureOrSuccessOption,
                    projectFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedProjectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSubmitted) ^
      const DeepCollectionEquality().hash(projectFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ProjectFormStateCopyWith<_ProjectFormState> get copyWith =>
      __$ProjectFormStateCopyWithImpl<_ProjectFormState>(this, _$identity);
}

abstract class _ProjectFormState implements ProjectFormState {
  const factory _ProjectFormState(
      {required String? selectedProjectId,
      required String name,
      required bool isLoading,
      required bool isSubmitted,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) = _$_ProjectFormState;

  @override
  String? get selectedProjectId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  Option<Either<ProjectFailure, Unit>> get projectFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectFormStateCopyWith<_ProjectFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
