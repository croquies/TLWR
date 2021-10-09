import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/auth/sign_in/sign_in_page.dart';
import 'package:tlwr_frontend/presentation/auth/sign_up/sign_up_page.dart';
import 'package:tlwr_frontend/presentation/dashboard/dashboard_page.dart';
import 'package:tlwr_frontend/presentation/dashboard/project_detail_page.dart';
import 'package:tlwr_frontend/presentation/home/home_page.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';

class RootLocation extends BeamLocation {
  RootLocation({BeamState? state}) : super(state);

  @override
  List<String> get pathBlueprints => [
        RouteNames.home,
        RouteNames.signIn,
        RouteNames.signUp,
        RouteNames.dashboard,
        RouteNames.dashboardWithProjectId,
      ].map(RouteNames.getPath).toList();

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    getIt<Logger>().d(
      '[RootLocation] segments: ${state.pathBlueprintSegments}, '
      'parameters: ${state.pathParameters}',
    );
    final pages = [
      if (state.uri.pathSegments.contains(RouteNames.home))
        BeamPage(
          key: const ValueKey(RouteNames.home),
          title: RouteNames.home,
          child: const HomePage(),
        ),
      if (state.uri.pathSegments.contains(RouteNames.signIn))
        BeamPage(
          key: const ValueKey(RouteNames.signIn),
          title: RouteNames.signIn,
          child: const SignInPage(),
        ),
      if (state.uri.pathSegments.contains(RouteNames.signUp))
        BeamPage(
          key: const ValueKey(RouteNames.signUp),
          title: RouteNames.signUp,
          child: const SignUpPage(),
        ),
      if (state.uri.pathSegments.contains(RouteNames.dashboard))
        BeamPage(
          key: const ValueKey(RouteNames.dashboard),
          title: RouteNames.dashboard,
          child: const DashboardPage(),
        ),
      if (state.uri.pathSegments.contains(RouteNames.dashboard) &&
          state.pathParameters['projectId'] != null)
        BeamPage(
          key: ValueKey(
              '${RouteNames.dashboard}-${state.pathParameters['projectId']}'),
          title: RouteNames.dashboardWithProjectId,
          child: ProjectDetailPage(
            projectId: state.pathParameters['projectId']!,
          ),
        ),
    ];
    getIt<Logger>().d('[RootLocation] pages: $pages');
    return pages;
  }
}
