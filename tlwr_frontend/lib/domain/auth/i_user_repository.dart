import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tlwr_frontend/domain/auth/auth_failure.dart';
import 'package:tlwr_frontend/domain/auth/user.dart';

@module
abstract class IUserRepository {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGithub();
  Future<void> signOut();
}
