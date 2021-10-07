import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';

import 'package:tlwr_frontend/presentation/routes/router.gr.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    final defaultTextTheme = Typography.material2018().white;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp.router(
        title: 'TLWR: The Long and Winding Road',
        routeInformationProvider: _appRouter.routeInfoProvider(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kcPrimaryColor,
          primarySwatch: kcPrimarySwatch,
          backgroundColor: kcBackgroundColor,
          scaffoldBackgroundColor: kcBackgroundColor,
          textTheme: TextTheme(
            headline1: defaultTextTheme.headline1?.copyWith(
              inherit: false,
              fontSize: 48,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            headline2: defaultTextTheme.headline2?.copyWith(
              inherit: false,
              fontSize: 34,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            headline3: defaultTextTheme.headline3?.copyWith(
              inherit: false,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            bodyText1: defaultTextTheme.bodyText1?.copyWith(
              inherit: false,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            bodyText2: defaultTextTheme.bodyText2?.copyWith(
              inherit: false,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textBaseline: TextBaseline.alphabetic,
            ),
            subtitle1: defaultTextTheme.subtitle1?.copyWith(
              inherit: false,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              textBaseline: TextBaseline.alphabetic,
            ),
            subtitle2: defaultTextTheme.subtitle2?.copyWith(
              inherit: false,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            caption: defaultTextTheme.caption?.copyWith(
              inherit: false,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textBaseline: TextBaseline.alphabetic,
            ),
            button: defaultTextTheme.button?.copyWith(
              inherit: false,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              textBaseline: TextBaseline.alphabetic,
            ),
            overline: defaultTextTheme.overline?.copyWith(
              inherit: false,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ),
      ),
    );
  }
}
