import 'package:auto_route/auto_route.dart';
import 'package:tlwr_frontend/presentation/auth/sign_in/sign_in_page.dart';
import 'package:tlwr_frontend/presentation/auth/sign_out/sign_out_page.dart';
import 'package:tlwr_frontend/presentation/auth/sign_up/sign_up_page.dart';
import 'package:tlwr_frontend/presentation/dashboard/dashboard_page.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: DashboardPage,
      path: RouteNames.home,
      initial: true,
    ),
    MaterialRoute(
      page: SignUpPage,
      path: RouteNames.signUp,
    ),
    MaterialRoute(
      page: SignInPage,
      path: RouteNames.signIn,
    ),
    MaterialRoute(
      page: SignOutPage,
      path: RouteNames.signOut,
    ),
  ],
)
class $AppRouter {}
