import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:tlwr_frontend/presentation/shared/resources/resources.dart';

class TLWRMenuData {
  const TLWRMenuData({
    required this.title,
    required this.icon,
    required this.routePath,
    required this.routeName,
  });
  final String title;
  final Widget icon;
  final String routePath;
  final String routeName;

  TLWRMenuData copyWith({
    String? title,
    Widget? icon,
    String? routePath,
    String? routeName,
  }) {
    return TLWRMenuData(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      routePath: routePath ?? this.routePath,
      routeName: routeName ?? this.routeName,
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
    final selectedIndex = useState(0);
    final currentRoute = ModalRoute.of(context)?.settings.name;

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
                    selected: menus[index].routeName == currentRoute,
                    onPressed: () {
                      selectedIndex.value = index;
                      context.router.pushNamed(menus[index].routePath);
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
    return ScreenTypeLayout(
      mobile: const TLWRMenuMobile(),
      tablet: TLWRMenuDesktop(
        menus: menus,
      ),
    );
  }
}
