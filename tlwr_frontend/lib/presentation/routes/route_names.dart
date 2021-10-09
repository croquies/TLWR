extension ReadableRouteName on String {
  String readable(String name) {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    final splitedName = name.split(beforeCapitalLetter);
    final result = splitedName.sublist(0, splitedName.length - 1).join(' ');
    return result;
  }
}

class RouteNames {
  static String getPath(String name) => '/$name';

  static const String home = 'home';
  static const String signUp = 'sign-up';
  static const String signIn = 'sign-in';

  static const String dashboard = 'dashboard';

  static final List<String> nonAuthRoutes = [
    getPath(home),
    getPath(signUp),
    getPath(signIn),
  ];
}
