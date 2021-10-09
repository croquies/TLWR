import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tlwr_frontend/domain/project/i_project_repository.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/domain/project/project_failure.dart';

@LazySingleton(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  ProjectRepository(this._supabase, this._logger);

  final Supabase _supabase;
  final Logger _logger;

  final String tableName = 'projects';

  @override
  Future<Either<ProjectFailure, List<Project>>> list() async {
    _logger.d('[ProjectRepository] list');
    try {
      final response =
          await _supabase.client.from(tableName).select().execute();
      if (response.error != null) {
        _logger.e('[ProjectRepository] ${response.error}');
        return left(
            ProjectFailure.errorWithMessage(response.error?.message ?? ''));
      } else {
        _logger.d('[ProjectRepository] ${response.data}');
        final json = response.data as List<dynamic>;
        return right(json.map((item) => Project.fromJson(item)).toList());
      }
    } catch (e) {
      _logger.e('[ProjectRepository] ${e.toString()}');
      return left(const ProjectFailure.unexpected());
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> create(Project project) async {
    _logger.d('[ProjectRepository] create ${project.toJson()}');
    try {
      final projectJson = project.toJson()
        ..removeWhere((key, value) => value == null);

      final response =
          await _supabase.client.from(tableName).insert(projectJson).execute();
      if (response.error != null) {
        _logger.e('[ProjectRepository] ${response.error}');
        return left(
            ProjectFailure.errorWithMessage(response.error?.message ?? ''));
      } else {
        _logger.d('[ProjectRepository] ${response.data}');
        return right(unit);
      }
    } catch (e) {
      _logger.e('[ProjectRepository] ${e.toString()}');
      return left(const ProjectFailure.unexpected());
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> delete(Project project) async {
    _logger.d('[ProjectRepository] delete ${project.toJson()}');
    try {
      final response = await _supabase.client
          .from(tableName)
          .delete()
          .eq('id', project.id)
          .execute();
      if (response.error != null) {
        _logger.e('[ProjectRepository] ${response.error}');
        return left(
            ProjectFailure.errorWithMessage(response.error?.message ?? ''));
      } else {
        _logger.d('[ProjectRepository] ${response.data}');
        return right(unit);
      }
    } catch (e) {
      _logger.e('[ProjectRepository] ${e.toString()}');
      return left(const ProjectFailure.unexpected());
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> update(Project project) async {
    _logger.d('[ProjectRepository] update ${project.toJson()}');
    try {
      final projectJson = project.toJson()
        ..removeWhere((key, value) => value == null);

      final response = await _supabase.client
          .from(tableName)
          .update(projectJson)
          .eq('id', project.id)
          .execute();
      if (response.error != null) {
        _logger.e('[ProjectRepository] ${response.error}');
        return left(
            ProjectFailure.errorWithMessage(response.error?.message ?? ''));
      } else {
        _logger.d('[ProjectRepository] ${response.data}');
        return right(unit);
      }
    } catch (e) {
      _logger.e('[ProjectRepository] ${e.toString()}');
      return left(const ProjectFailure.unexpected());
    }
  }
}
