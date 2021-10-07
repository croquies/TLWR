import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';

class SignOutPage extends HookWidget {
  const SignOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<AuthBloc>().add(const AuthEvent.signedOut());
      context.router.replaceNamed(RouteNames.home);
    });
    return const TLWRScaffold(
        child: Center(child: CircularProgressIndicator()));
  }
}
