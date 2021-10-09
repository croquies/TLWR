// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i10;
import 'application/auth/auth_form/auth_form_bloc.dart' as _i11;
import 'application/project/project_bloc.dart' as _i9;
import 'domain/auth/i_user_repository.dart' as _i7;
import 'domain/project/i_project_repository.dart' as _i5;
import 'infrastructure/auth/user_repository.dart' as _i8;
import 'infrastructure/project/project_repository.dart' as _i6;
import 'modules.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final loggerModule = _$LoggerModule();
  final supabaseModule = _$SupabaseModule();
  gh.lazySingleton<_i3.Logger>(() => loggerModule.logger);
  gh.lazySingleton<_i4.Supabase>(() => supabaseModule.supabase);
  gh.lazySingleton<_i5.IProjectRepository>(
      () => _i6.ProjectRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.lazySingleton<_i7.IUserRepository>(
      () => _i8.UserRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.factory<_i9.ProjectBloc>(() => _i9.ProjectBloc(
      get<_i7.IUserRepository>(), get<_i5.IProjectRepository>()));
  gh.factory<_i10.AuthBloc>(
      () => _i10.AuthBloc(get<_i7.IUserRepository>(), get<_i3.Logger>()));
  gh.factory<_i11.AuthFormBloc>(
      () => _i11.AuthFormBloc(get<_i7.IUserRepository>()));
  return get;
}

class _$LoggerModule extends _i12.LoggerModule {}

class _$SupabaseModule extends _i12.SupabaseModule {}
