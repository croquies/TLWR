import 'dart:async';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tlwr_frontend/domain/auth/auth_failure.dart';
import 'package:tlwr_frontend/domain/auth/i_user_repository.dart';
import 'package:tlwr_frontend/domain/auth/user.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._supabase, this._logger);

  final Supabase _supabase;
  final Logger _logger;

  @override
  Future<void> signOut() async {
    _logger.d('signOut');
    await _supabase.client.auth.signOut();
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    _logger.d('getSignedInUser ${_supabase.client.auth.currentUser}');
    return optionOf(
      User.fromJson(_supabase.client.auth.currentUser?.toJson() ?? {}),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    _logger.d('signUpWithEmailAndPassword');
    try {
      final response = await _supabase.client.auth.signUp(
        email,
        password,
      );
      _logger.d(response.data);
      if (response.error == null) {
        return right(unit);
      } else {
        return left(
            AuthFailure.errorWithMessage(response.error?.message ?? ''));
      }
    } catch (e) {
      _logger.e(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    _logger.d('signInWithEmailAndPassword');
    try {
      final response = await _supabase.client.auth.signIn(
        email: email,
        password: password,
      );
      if (response.error == null) {
        return right(unit);
      } else {
        return left(
            AuthFailure.errorWithMessage(response.error?.message ?? ''));
      }
    } catch (e) {
      _logger.e(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGithub() async {
    _logger.d('signInWithGithub');
    return left(const AuthFailure.serverError());
  }
}
