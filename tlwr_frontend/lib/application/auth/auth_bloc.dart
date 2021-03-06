import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tlwr_frontend/domain/auth/i_user_repository.dart';
import 'package:tlwr_frontend/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._userRepository, this._logger)
      : super(const AuthState.initial());

  final IUserRepository _userRepository;
  final Logger _logger;

  Option<User> getOptionOfUser() {
    return state.map(
      initial: (_) => none(),
      authenticated: (a) => some(a.user),
      unauthenticated: (_) => none(),
    );
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _userRepository.getSignedInUser();
        _logger.d('[AuthBloc][authCheckRequested] userOption: $userOption');
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _userRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
