import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/routes/router.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_observer/tlwr_logger.dart';
import 'package:tlwr_observer/tlwr_observer/tlwr_observer.dart';

final tlwrLogger =
    TLWRLogger.initialize(id: '3f963ff8-cf80-4709-9309-7db573b8eec6');
final tlwrObserver = TLWRObserver.initialize(tlwrLogger: tlwrLogger);

class AppWidget extends HookWidget {
  AppWidget({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
    navigatorObservers: [tlwrObserver],
    transitionDelegate: const NoAnimationTransitionDelegate(),
    initialPath: RouteNames.getPath(RouteNames.home),
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        RootLocation(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final defaultTextTheme = Typography.material2018().white;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: BeamerProvider(
        routerDelegate: routerDelegate,
        child: MaterialApp.router(
          title: 'TLWR: The Long and Winding Road',
          routerDelegate: routerDelegate,
          routeInformationParser: BeamerParser(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: kcPrimaryColor,
            primarySwatch: kcPrimarySwatch,
            backgroundColor: kcBackgroundColor,
            scaffoldBackgroundColor: kcBackgroundColor,
            bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0),
            ),
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
      ),
    );
  }
}
