import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/auth/auth_form/auth_form_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/auth/widgets/auth_form.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';

class SignInPage extends HookWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return TLWRScaffold(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => getIt<AuthFormBloc>(),
            child: const AuthForm(),
          ),
        ),
      );
    });
  }
}
