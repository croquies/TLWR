import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tlwr_frontend/application/auth/auth_validator_mixin.dart';
import 'package:tlwr_frontend/domain/auth/auth_failure.dart';
import 'package:tlwr_frontend/domain/auth/i_user_repository.dart';

part 'auth_form_bloc.freezed.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState>
    with AuthValidatorMixin {
  AuthFormBloc(this._userRepository)
      : passwordController = TextEditingController(),
        confirmPasswordController = TextEditingController(),
        super(AuthFormState.initial()) {
    textControllers.addAll([
      passwordController,
      confirmPasswordController,
    ]);
  }

  final IUserRepository _userRepository;

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final List<TextEditingController> textControllers = [];

  void clearPassword() {
    add(const AuthFormEvent.passwordChanged(''));
    passwordController.clear();
    add(const AuthFormEvent.confirmPasswordChanged(''));
    confirmPasswordController.clear();
  }

  @override
  Future<void> close() {
    for (final controller in textControllers) {
      controller.dispose();
    }
    return super.close();
  }

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    yield* event.map(
      signInWithDemo: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess =
            await _userRepository.signInWithEmailAndPassword(
          email: 'tlwr.demo@gmail.com',
          password: '123123123',
        );
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          message: '',
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email ?? '',
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password ?? '',
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: e.confirmPassword ?? '',
          authFailureOrSuccessOption: none(),
        );
      },
      signUpWithEmailAndPasswordPressed: (e) async* {
        yield* _performAction(
          _userRepository.signUpWithEmailAndPassword,
          signUp: true,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performAction(
          _userRepository.signInWithEmailAndPassword,
        );
      },
      signInWithGithubPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _userRepository.signInWithGithub();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<AuthFormState> _performAction(
      Future<Either<AuthFailure, Unit>> Function({
    required String email,
    required String password,
  })
          forwardedCall,
      {bool signUp = false}) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = emailValidator(state.email);
    final isPasswordValid = passwordValidator(state.password);

    var isValid = isEmailValid == null && isPasswordValid == null;
    if (signUp) {
      isValid &=
          confirmPasswordValidator(state.password, state.confirmPassword) ==
              null;
    }

    if (isValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
      );
    }

    var message = '';
    if (signUp) {
      optionOf(failureOrSuccess).fold(() {}, (either) {
        either.fold((l) => null, (r) {
          message = 'Congratulations!\n';
          message += 'Your registration is almost complete.';
          message += 'Please confirm your email address.';
        });
      });
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      message: message,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
