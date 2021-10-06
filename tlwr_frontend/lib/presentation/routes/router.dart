import 'package:auto_route/annotations.dart';
import 'package:tlwr_frontend/presentation/auth/sign_in/sign_in_page.dart';
import 'package:tlwr_frontend/presentation/auth/sign_up/sign_up_page.dart';
import 'package:tlwr_frontend/presentation/dashboard/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: DashboardPage,
      path: '/',
      initial: true,
    ),
    MaterialRoute(
      page: SignUpPage,
      path: '/sign-up',
    ),
    MaterialRoute(
      page: SignInPage,
      path: '/sign-in',
    ),
  ],
)
class $AppRouter {}
