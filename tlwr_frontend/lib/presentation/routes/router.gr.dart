// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../auth/sign_in/sign_in_page.dart' as _i3;
import '../auth/sign_out/sign_out_page.dart' as _i4;
import '../auth/sign_up/sign_up_page.dart' as _i2;
import '../dashboard/dashboard_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    SignUpRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    SignOutRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignOutPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(DashboardRoute.name, path: '/'),
        _i5.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i5.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i5.RouteConfig(SignOutRoute.name, path: '/sign-out')
      ];
}

/// generated route for [_i1.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: '/');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i2.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i3.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for [_i4.SignOutPage]
class SignOutRoute extends _i5.PageRouteInfo<void> {
  const SignOutRoute() : super(name, path: '/sign-out');

  static const String name = 'SignOutRoute';
}
