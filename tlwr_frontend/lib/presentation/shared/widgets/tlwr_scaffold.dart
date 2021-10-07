import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tlwr_frontend/presentation/routes/router.gr.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_menu.dart';

class TLWRScaffold extends HookWidget {
  const TLWRScaffold({Key? key, this.title, required this.child})
      : super(key: key);

  final String? title;
  final Widget child;

  String routeName(String name) {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    final splitedName = name.split(beforeCapitalLetter);
    final result = splitedName.sublist(0, splitedName.length - 1).join(' ');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final nameAndPaths = useMemoized(() => AppRouter().routes);
    final getRoutePath = useCallback(
        (name) => nameAndPaths.firstWhere((e) => e.name == name).path, []);

    final menus = useMemoized(() => <TLWRMenuData>[
          TLWRMenuData(
            title: routeName(DashboardRoute.name),
            icon: const Icon(Icons.dashboard),
            routePath: getRoutePath(DashboardRoute.name),
            routeName: DashboardRoute.name,
          ),
          TLWRMenuData(
            title: routeName(SignInRoute.name),
            icon: const Icon(Icons.login),
            routePath: getRoutePath(SignInRoute.name),
            routeName: SignInRoute.name,
          ),
          TLWRMenuData(
            title: routeName(SignUpRoute.name),
            icon: const Icon(Icons.exit_to_app),
            routePath: getRoutePath(SignUpRoute.name),
            routeName: SignUpRoute.name,
          ),
          TLWRMenuData(
            title: routeName(SignOutRoute.name),
            icon: const Icon(Icons.logout),
            routePath: getRoutePath(SignOutRoute.name),
            routeName: SignOutRoute.name,
          ),
        ]);

    return Scaffold(
      key: scaffoldKey,
      // endDrawer:
      //     sizingInformation.isDesktop ? null : TLWRMenu(menus: menus),
      body: SafeArea(
        child: Column(
          children: [
            TLWRMenu(menus: menus),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
