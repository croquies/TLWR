import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/resources/resources.dart';

enum RouteType { nonAuth, auth, both }

class TLWRMenuData {
  const TLWRMenuData({
    required this.title,
    required this.icon,
    required this.routeName,
    this.callback,
    this.routeType = RouteType.auth,
  });
  final String title;
  final Widget icon;
  final String routeName;
  final Function()? callback;
  final RouteType routeType;

  TLWRMenuData copyWith({
    String? title,
    Widget? icon,
    String? routePath,
    String? routeName,
    Function()? callback,
    RouteType? routeType,
  }) {
    return TLWRMenuData(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      routeName: routeName ?? this.routeName,
      callback: callback ?? this.callback,
      routeType: routeType ?? this.routeType,
    );
  }
}

class TLWRMenuLogo extends StatelessWidget {
  const TLWRMenuLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage(Images.logo));
  }
}

class TLWRMenuItem extends StatelessWidget {
  const TLWRMenuItem({
    Key? key,
    required this.item,
    required this.onPressed,
    this.selected = false,
  }) : super(key: key);

  final TLWRMenuData item;
  final VoidCallback onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: item.icon,
      label: Text(item.title),
      onPressed: selected ? null : onPressed,
    );
  }
}

class TLWRMenuMobile extends StatelessWidget {
  const TLWRMenuMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const TLWRMenuLogo(),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class TLWRMenuDesktop extends HookWidget {
  const TLWRMenuDesktop({Key? key, this.menus = const []}) : super(key: key);
  final List<TLWRMenuData> menus;

  @override
  Widget build(BuildContext context) {
    final currentPath = context.currentBeamLocation.state.pathBlueprintSegments;

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const TLWRMenuLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                menus.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TLWRMenuItem(
                    item: menus[index],
                    selected: currentPath.contains(menus[index].routeName),
                    onPressed: () {
                      final callback = menus[index].callback;
                      if (callback != null) {
                        callback();
                      } else {
                        context.beamToNamed(
                            RouteNames.getPath(menus[index].routeName));
                      }
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TLWRMenu extends StatelessWidget {
  const TLWRMenu({Key? key, this.menus = const []}) : super(key: key);

  final List<TLWRMenuData> menus;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ScreenTypeLayout(
            mobile: const TLWRMenuMobile(),
            tablet: TLWRMenuDesktop(
              menus: state.maybeWhen(
                authenticated: () => menus
                    .where((e) =>
                        [RouteType.auth, RouteType.both].contains(e.routeType))
                    .toList(),
                orElse: () => menus
                    .where((e) => [RouteType.nonAuth, RouteType.both]
                        .contains(e.routeType))
                    .toList(),
              ),
            ),
          ); // return widget here based on BlocA's state
        });
  }
}
