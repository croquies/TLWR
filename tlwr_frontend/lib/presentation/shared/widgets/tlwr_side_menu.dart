import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SideMenuItem {
  const SideMenuItem({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final Widget icon;
  final void Function(BuildContext) onPressed;

  SideMenuItem copyWith({
    String? title,
    Widget? icon,
    void Function(BuildContext)? onPressed,
  }) {
    return SideMenuItem(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      onPressed: onPressed ?? this.onPressed,
    );
  }
}

class SideMenuListTile extends StatelessWidget {
  const SideMenuListTile({
    Key? key,
    required this.item,
    required this.onPressed,
  }) : super(key: key);

  final SideMenuItem item;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      horizontalTitleGap: 0,
      leading: item.icon,
      title: Text(
        item.title,
      ),
    );
  }
}

class TLWRSideMenu extends HookWidget {
  const TLWRSideMenu({Key? key, this.menus = const []}) : super(key: key);

  final List<SideMenuItem> menus;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(Icons.home),
          ),
          ...List.generate(
            menus.length,
            (index) {
              final menu = menus[index];
              return SideMenuListTile(
                item: menu,
                onPressed: () {
                  selectedIndex.value = index;
                  menus[index].onPressed(context);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
