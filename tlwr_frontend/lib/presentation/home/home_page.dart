import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlwr_frontend/application/auth/auth_bloc.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return TLWRScaffold(
          child: Container(
            color: state.maybeWhen(
                authenticated: () => Colors.green, orElse: () => Colors.yellow),
            child: const Text('HomePage'),
          ),
        );
      },
    );
  }
}
