import 'package:flutter/material.dart';

import 'package:tlwr_frontend/presentation/routes/router.gr.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      title: 'TLWR: The Long and Winding Road',
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: kcPrimaryColor,
        backgroundColor: kcBackgroundColor,
      ),
    );
  }
}
