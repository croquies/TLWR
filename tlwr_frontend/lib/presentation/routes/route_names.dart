export 'package:beamer/beamer.dart';

extension ReadableRouteName on String {
  String get readable {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    final splitedName = split(beforeCapitalLetter);
    final result = splitedName.sublist(0, splitedName.length - 1).join(' ');
    return result;
  }
}

class RouteNames {
  static String getPath(String name) => '/$name';

  static const String home = '';
  static const String signUp = 'sign-up';
  static const String signIn = 'sign-in';

  static const String dashboard = 'dashboard';

  static const String paramProjectId = ':projectId';
  static const String dashboardWithProjectId = 'dashboard/$paramProjectId';

  // title
  static const String homeTitle = 'Home';
  static const String signUpTitle = 'Sign up';
  static const String signInTitle = 'Sign in';
  static const String dashboardTitle = 'Dashboard';

  static final List<String> nonAuthRoutes = [
    getPath(home),
    getPath(signUp),
    getPath(signIn),
  ];
}
