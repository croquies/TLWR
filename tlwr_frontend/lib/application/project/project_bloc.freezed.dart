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

  _NameChanged nameChanged(String? name) {
    return _NameChanged(
      name,
    );
  }

  _ProjectSelected projectSelected(String? id) {
    return _ProjectSelected(
      id,
    );
  }

  _Create carete(Project? project) {
    return _Create(
      project,
    );
  }

  _Update update(Project? project) {
    return _Update(
      project,
    );
  }

  _Delete delete(Project? project) {
    return _Delete(
      project,
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
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
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
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
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
    return 'ProjectEvent.nameChanged(name: $name)';
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
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProjectEvent {
  const factory _NameChanged(String? name) = _$_NameChanged;

  String? get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProjectSelectedCopyWith<$Res> {
  factory _$ProjectSelectedCopyWith(
          _ProjectSelected value, $Res Function(_ProjectSelected) then) =
      __$ProjectSelectedCopyWithImpl<$Res>;
  $Res call({String? id});
}

/// @nodoc
class __$ProjectSelectedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$ProjectSelectedCopyWith<$Res> {
  __$ProjectSelectedCopyWithImpl(
      _ProjectSelected _value, $Res Function(_ProjectSelected) _then)
      : super(_value, (v) => _then(v as _ProjectSelected));

  @override
  _ProjectSelected get _value => super._value as _ProjectSelected;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ProjectSelected(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProjectSelected implements _ProjectSelected {
  const _$_ProjectSelected(this.id);

  @override
  final String? id;

  @override
  String toString() {
    return 'ProjectEvent.projectSelected(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectSelected &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ProjectSelectedCopyWith<_ProjectSelected> get copyWith =>
      __$ProjectSelectedCopyWithImpl<_ProjectSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return projectSelected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return projectSelected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return projectSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return projectSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(this);
    }
    return orElse();
  }
}

abstract class _ProjectSelected implements ProjectEvent {
  const factory _ProjectSelected(String? id) = _$_ProjectSelected;

  String? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProjectSelectedCopyWith<_ProjectSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  $Res call({Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_Create(
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

class _$_Create implements _Create {
  const _$_Create(this.project);

  @override
  final Project? project;

  @override
  String toString() {
    return 'ProjectEvent.carete(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Create &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @JsonKey(ignore: true)
  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return carete(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return carete?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) {
    if (carete != null) {
      return carete(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return carete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return carete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (carete != null) {
      return carete(this);
    }
    return orElse();
  }
}

abstract class _Create implements ProjectEvent {
  const factory _Create(Project? project) = _$_Create;

  Project? get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateCopyWith<_Create> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
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
    return 'ProjectEvent.update(project: $project)';
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
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return update(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return update?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProjectEvent {
  const factory _Update(Project? project) = _$_Update;

  Project? get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Project? project});

  $ProjectCopyWith<$Res>? get project;
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
    Object? project = freezed,
  }) {
    return _then(_Delete(
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

class _$_Delete implements _Delete {
  const _$_Delete(this.project);

  @override
  final Project? project;

  @override
  String toString() {
    return 'ProjectEvent.delete(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return delete(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return delete?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
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
  const factory _Delete(Project? project) = _$_Delete;

  Project? get project => throw _privateConstructorUsedError;
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
    required TResult Function(String? name) nameChanged,
    required TResult Function(String? id) projectSelected,
    required TResult Function(Project? project) carete,
    required TResult Function(Project? project) update,
    required TResult Function(Project? project) delete,
    required TResult Function() list,
  }) {
    return list();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
    TResult Function()? list,
  }) {
    return list?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? nameChanged,
    TResult Function(String? id)? projectSelected,
    TResult Function(Project? project)? carete,
    TResult Function(Project? project)? update,
    TResult Function(Project? project)? delete,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_Create value) carete,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_List value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_List value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_Create value)? carete,
    TResult Function(_Update value)? update,
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
      {required String selectedProjectId,
      required String name,
      required bool isLoading,
      required List<Project>? projects,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) {
    return _ProjectState(
      selectedProjectId: selectedProjectId,
      name: name,
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
  String get selectedProjectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
      {String selectedProjectId,
      String name,
      bool isLoading,
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
    Object? selectedProjectId = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? projects = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      selectedProjectId: selectedProjectId == freezed
          ? _value.selectedProjectId
          : selectedProjectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String selectedProjectId,
      String name,
      bool isLoading,
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
    Object? selectedProjectId = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? projects = freezed,
    Object? projectFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProjectState(
      selectedProjectId: selectedProjectId == freezed
          ? _value.selectedProjectId
          : selectedProjectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.selectedProjectId,
      required this.name,
      required this.isLoading,
      required this.projects,
      required this.projectFailureOrSuccessOption});

  @override
  final String selectedProjectId;
  @override
  final String name;
  @override
  final bool isLoading;
  @override
  final List<Project>? projects;
  @override
  final Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProjectState(selectedProjectId: $selectedProjectId, name: $name, isLoading: $isLoading, projects: $projects, projectFailureOrSuccessOption: $projectFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectState &&
            (identical(other.selectedProjectId, selectedProjectId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProjectId, selectedProjectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(selectedProjectId) ^
      const DeepCollectionEquality().hash(name) ^
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
      {required String selectedProjectId,
      required String name,
      required bool isLoading,
      required List<Project>? projects,
      required Option<Either<ProjectFailure, Unit>>
          projectFailureOrSuccessOption}) = _$_ProjectState;

  @override
  String get selectedProjectId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
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
