// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/auth_form/auth_form_bloc.dart' as _i15;
import 'application/dynamic_event/cubit/get_dynamic_event_cubit.dart' as _i16;
import 'application/project/project_bloc.dart' as _i13;
import 'domain/auth/i_user_repository.dart' as _i11;
import 'domain/dynamic_event/i_dynamic_event_repository.dart' as _i5;
import 'domain/page_node/i_page_node_repository.dart' as _i7;
import 'domain/project/i_project_repository.dart' as _i9;
import 'infrastructure/auth/user_repository.dart' as _i12;
import 'infrastructure/dynamic_event/dynamic_event_repository.dart' as _i6;
import 'infrastructure/page_node/page_node_repository.dart' as _i8;
import 'infrastructure/project/project_repository.dart' as _i10;
import 'modules.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final loggerModule = _$LoggerModule();
  final supabaseModule = _$SupabaseModule();
  gh.lazySingleton<_i3.Logger>(() => loggerModule.logger);
  gh.lazySingleton<_i4.Supabase>(() => supabaseModule.supabase);
  gh.lazySingleton<_i5.IDynamicEventRepository>(
      () => _i6.DynamicEventRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.lazySingleton<_i7.IPageNodeRepository>(
      () => _i8.PageNodeRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.lazySingleton<_i9.IProjectRepository>(
      () => _i10.ProjectRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.lazySingleton<_i11.IUserRepository>(
      () => _i12.UserRepository(get<_i4.Supabase>(), get<_i3.Logger>()));
  gh.factory<_i13.ProjectBloc>(() => _i13.ProjectBloc(
      get<_i11.IUserRepository>(), get<_i9.IProjectRepository>()));
  gh.factory<_i14.AuthBloc>(
      () => _i14.AuthBloc(get<_i11.IUserRepository>(), get<_i3.Logger>()));
  gh.factory<_i15.AuthFormBloc>(
      () => _i15.AuthFormBloc(get<_i11.IUserRepository>()));
  gh.factory<_i16.GetDynamicEventCubit>(
      () => _i16.GetDynamicEventCubit(get<_i5.IDynamicEventRepository>()));
  return get;
}

class _$LoggerModule extends _i17.LoggerModule {}

class _$SupabaseModule extends _i17.SupabaseModule {}
