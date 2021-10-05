import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/presentation/routes/router.gr.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_side_menu.dart';

class TLWRScaffold extends HookWidget {
  const TLWRScaffold({Key? key, this.title, required this.child})
      : super(key: key);

  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final routes = useMemoized(() => AppRouter().routes);
    final getRoutePath = useCallback(
        (name) => routes.firstWhere((e) => e.name == name).path, routes);

    final menus = useMemoized(() => <SideMenuItem>[
          SideMenuItem(
            title: DashboardRoute.name,
            icon: const Icon(Icons.dashboard),
            onPressed: (context) => context.router.pushNamed(
              getRoutePath(DashboardRoute.name),
            ),
          ),
          SideMenuItem(
            title: SignInRoute.name,
            icon: const Icon(Icons.login),
            onPressed: (context) => context.router.pushNamed(
              getRoutePath(SignInRoute.name),
            ),
          ),
          SideMenuItem(
            title: SignUpRoute.name,
            icon: const Icon(Icons.exit_to_app),
            onPressed: (context) => context.router.pushNamed(
              getRoutePath(SignUpRoute.name),
            ),
          ),
        ]);

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          key: scaffoldKey,
          drawer:
              sizingInformation.isDesktop ? null : TLWRSideMenu(menus: menus),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (sizingInformation.isDesktop)
                  Expanded(
                    child: TLWRSideMenu(menus: menus),
                  ),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        if (!sizingInformation.isDesktop)
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              if (scaffoldKey.currentState?.isDrawerOpen ??
                                  false) {
                                scaffoldKey.currentState?.openDrawer();
                                scaffoldKey.currentState?.openEndDrawer();
                              }
                            },
                          ),
                        if (!sizingInformation.isMobile)
                          Text(
                            'Dashboard',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        if (!sizingInformation.isMobile)
                          Spacer(flex: sizingInformation.isDesktop ? 2 : 1),
                        child,
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
