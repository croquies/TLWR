import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlwr_frontend/application/project/project_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/dashboard/widgets/project_list.dart';
import 'package:tlwr_frontend/presentation/routes/route_names.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_auth_required_widget.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';
import 'package:tlwr_observer/tlwr_observer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TLWRPageWidget(
      label: 'Dashboard',
      child: TLWRAuthRequiredWidget(
        builder: (context, authState) {
          return BlocProvider(
            create: (context) =>
                getIt<ProjectBloc>()..add(const ProjectEvent.list()),
            child: BlocConsumer<ProjectBloc, ProjectState>(
              listener: (context, state) {},
              builder: (context, state) {
                return authState.maybeMap(authenticated: (_) {
                  return TLWRScaffold(
                    child: ProjectList(projects: state.projects),
                  );
                }, orElse: () {
                  return TLWRScaffold(
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Text('Sign in is required.',
                              style: Theme.of(context).textTheme.headline3),
                          const SizedBox(height: 15),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            child: TLWRButton(
                              title: 'Go to sign in page',
                              onTap: () {
                                context.beamToNamed(
                                    RouteNames.getPath(RouteNames.signIn));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            ),
          );
        },
      ),
    );
  }
}
