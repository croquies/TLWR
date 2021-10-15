import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/presentation/home/widgets/home_contents.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';
import 'package:tlwr_observer/tlwr_observer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TLWRPageWidget(
      label: 'Home',
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return const TLWRScaffold(
            child: HomeContents(),
          );
        },
      ),
    );
  }
}
