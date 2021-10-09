import 'package:dartz/dartz.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/domain/project/project_failure.dart';

abstract class IProjectRepository {
  Future<Either<ProjectFailure, Unit>> create(Project project);
  Future<Either<ProjectFailure, Unit>> update(Project project);
  Future<Either<ProjectFailure, Unit>> delete(Project project);
  Future<Either<ProjectFailure, List<Project>>> list();
}
