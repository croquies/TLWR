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
    final isAuthenticated = useState(false);
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (_) {
            getIt<Logger>().d('[TLWRAuthRequiredWidget] authenticated');
            isAuthenticated.value = true;
          },
          orElse: () {
            getIt<Logger>().d('[TLWRAuthRequiredWidget] unauthenticated');
            isAuthenticated.value = false;
            Future.microtask(() => context.beamToNamed(
                  RouteNames.getPath(RouteNames.signIn),
                ));
          },
        );
      },
      builder: isAuthenticated.value
          ? builder
          : (context, state) {
              return TLWRScaffold(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Text('Sign in is required.',
                          style: Theme.of(context).textTheme.headline3),
                      const SizedBox(height: 15),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: TLWRButton(
                          title: 'Go to sign in page',
                          onTap: () {
                            context.beamToNamed(
                                RouteNames.getPath(RouteNames.signIn));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
    );
  }
}
