import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/resources/resources.dart';

enum RouteType { nonAuth, auth, both }
enum RouteButtonType { normal, popup, popupItem }

class TLWRMenuData {
  const TLWRMenuData({
    this.title = '',
    required this.icon,
    this.routeName = '',
    this.callback,
    this.routeType = RouteType.auth,
    this.routeButtonType = RouteButtonType.normal,
    this.items,
  });
  final String title;
  final Widget icon;
  final String routeName;
  final Function()? callback;
  final RouteType routeType;
  final RouteButtonType routeButtonType;
  final List<TLWRMenuData>? items;

  TLWRMenuData copyWith({
    String? title,
    Widget? icon,
    String? routeName,
    Function()? callback,
    RouteType? routeType,
    RouteButtonType? routeButtonType,
    List<TLWRMenuData>? items,
  }) {
    return TLWRMenuData(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      routeName: routeName ?? this.routeName,
      callback: callback ?? this.callback,
      routeType: routeType ?? this.routeType,
      routeButtonType: routeButtonType ?? this.routeButtonType,
      items: items ?? this.items,
    );
  }
}

class TLWRMenuLogo extends StatelessWidget {
  const TLWRMenuLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.beamToNamed(RouteNames.getPath(RouteNames.home));
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Image(
            image: AssetImage(Images.logo),
            height: 50,
          ),
        ),
      ),
    );
  }
}

class TLWRMenuItem extends HookWidget {
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
    final _popupMenuController = useMemoized(() => CustomPopupMenuController());

    if (item.routeButtonType == RouteButtonType.popup) {
      return CustomPopupMenu(
        barrierColor: Colors.transparent,
        pressType: PressType.singleClick,
        controller: _popupMenuController,
        child: TextButton.icon(
          icon: item.icon,
          label: Text(item.title),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          ),
          onPressed: _popupMenuController.showMenu,
        ),
        menuBuilder: () {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: kcBlackHighlightColor.withOpacity(0.6),
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: (item.items ?? [])
                      .map(
                        (item) => TextButton.icon(
                          icon: item.icon,
                          label: Text(item.title),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                          ),
                          onPressed: item.callback,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          );
        },
      );
    }
    if (item.title.isEmpty) {
      return IconButton(onPressed: onPressed, icon: item.icon);
    } else {
      return TextButton.icon(
        icon: item.icon,
        label: Text(item.title),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        ),
        onPressed: selected ? null : onPressed,
      );
    }
  }
}

class TLWRMenuMobile extends HookWidget {
  const TLWRMenuMobile(this.menus, {Key? key}) : super(key: key);
  final List<TLWRMenuData> menus;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final currentPath = context.currentBeamLocation.state.pathBlueprintSegments;
    for (var i = 0; i < menus.length; i++) {
      if (currentPath.contains(menus[i].routeName) &&
          selectedIndex.value != i) {
        selectedIndex.value = i;
      }
    }

    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const TLWRMenuLogo(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: kcPrimaryColor,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SelectActionBottomSheet(
                    children: List.generate(
                      menus.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TLWRMenuItem(
                          item: menus[index],
                          selected: index == selectedIndex.value,
                          onPressed: () {
                            final menu = menus[index];
                            final callback = menu.callback;
                            if (callback != null) {
                              callback();
                            } else {
                              if (menu.routeName.isNotEmpty) {
                                context.beamToNamed(
                                    RouteNames.getPath(menu.routeName));
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
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
    final currentPath = context.currentBeamLocation.state.pathBlueprintSegments;
    for (var i = 0; i < menus.length; i++) {
      if (currentPath.contains(menus[i].routeName) &&
          selectedIndex.value != i) {
        selectedIndex.value = i;
      }
    }

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
                    selected: index == selectedIndex.value,
                    onPressed: () {
                      final menu = menus[index];
                      final callback = menu.callback;
                      if (callback != null) {
                        callback();
                      } else {
                        selectedIndex.value = index;
                        if (menu.routeName.isNotEmpty) {
                          context
                              .beamToNamed(RouteNames.getPath(menu.routeName));
                        }
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
            mobile: TLWRMenuMobile(
              state.maybeWhen(
                authenticated: (_) {
                  return [
                    ...menus
                        .where((e) => [RouteType.auth, RouteType.both]
                            .contains(e.routeType))
                        .toList(),
                  ];
                },
                orElse: () {
                  return [
                    ...menus
                        .where((e) => [RouteType.nonAuth, RouteType.both]
                            .contains(e.routeType))
                        .toList(),
                  ];
                },
              ),
            ),
            tablet: TLWRMenuDesktop(
              menus: state.maybeWhen(
                authenticated: (_) {
                  return [
                    ...menus
                        .where((e) => [RouteType.auth, RouteType.both]
                            .contains(e.routeType))
                        .toList(),
                  ];
                },
                orElse: () {
                  return [
                    ...menus
                        .where((e) => [RouteType.nonAuth, RouteType.both]
                            .contains(e.routeType))
                        .toList(),
                  ];
                },
              ),
            ),
          ); // return widget here based on BlocA's state
        });
  }
}

class SelectActionBottomSheet extends StatefulWidget {
  const SelectActionBottomSheet({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  State<SelectActionBottomSheet> createState() =>
      _SelectActionBottomSheetState();
}

class _SelectActionBottomSheetState extends State<SelectActionBottomSheet> {
  bool _isClosing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50 * (widget.children.length + 1) + 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: kcBlackHighlightColor.withOpacity(0.6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [Expanded(child: SizedBox())],
          ),
          ...widget.children,
        ],
      ),
    );
  }

  void _close() {
    if (!_isClosing) {
      Navigator.of(context).pop();
      setState(() {
        _isClosing = true;
      });
    }
  }
}
