import 'package:tlwr_frontend/bootstrap.dart';
import 'package:tlwr_frontend/environment.dart';
import 'package:tlwr_frontend/presentation/core/app_widget.dart';

void main() {
  bootstrap(Environment.staging, () => const AppWidget());
}
