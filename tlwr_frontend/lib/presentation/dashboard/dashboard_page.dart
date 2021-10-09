import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:tlwr_frontend/application/project/project_bloc.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/dashboard/widgets/project_list.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_auth_required_widget.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TLWRAuthRequiredWidget(
      builder: (context, authState) {
        return BlocProvider(
          create: (context) =>
              getIt<ProjectBloc>()..add(const ProjectEvent.list()),
          child: BlocConsumer<ProjectBloc, ProjectState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TLWRScaffold(
                child: ProjectList(projects: state.projects),
              );
            },
          ),
        );
      },
    );
  }
}
