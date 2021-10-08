import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_menu.dart';

class TLWRScaffold extends HookWidget {
  const TLWRScaffold(
      {Key? key, this.title, required this.child, this.isLoading = false})
      : super(key: key);

  final String? title;
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final signOut = useState(false);

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final menus = <TLWRMenuData>[
          const TLWRMenuData(
            title: 'Home',
            icon: Icon(Icons.home),
            routeName: RouteNames.home,
            routeType: RouteType.both,
          ),
          const TLWRMenuData(
            title: 'Dashboard',
            icon: Icon(Icons.dashboard),
            routeName: RouteNames.dashboard,
          ),
          const TLWRMenuData(
            title: 'Sign in',
            icon: Icon(Icons.login),
            routeName: RouteNames.signIn,
            routeType: RouteType.nonAuth,
          ),
          const TLWRMenuData(
            title: 'Sign up',
            icon: Icon(Icons.exit_to_app),
            routeName: RouteNames.signUp,
            routeType: RouteType.nonAuth,
          ),
          TLWRMenuData(
            title: 'Sign out',
            icon: const Icon(Icons.logout),
            routeName: RouteNames.signOut,
            callback: () {
              signOut.value = true;
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
              context.beamToNamed(RouteNames.home);
            },
          ),
        ];

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            // endDrawer:
            //     sizingInformation.isDesktop ? null : TLWRMenu(menus: menus),
            body: SafeArea(
              child: Column(
                children: [
                  TLWRMenu(menus: menus),
                  if (isLoading || signOut.value)
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                  else
                    Expanded(child: child),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
