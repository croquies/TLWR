import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';

class TLWRAuthRequiredWidget extends HookWidget {
  const TLWRAuthRequiredWidget({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext, AuthState) builder;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (_) {
            getIt<Logger>().d('[TLWRAuthRequiredWidget] authenticated');
          },
          orElse: () {
            getIt<Logger>().d('[TLWRAuthRequiredWidget] unauthenticated');
            Future.microtask(() => context.beamToNamed(
                  RouteNames.getPath(RouteNames.signIn),
                ));
          },
        );
      },
      builder: builder,
    );
  }
}
