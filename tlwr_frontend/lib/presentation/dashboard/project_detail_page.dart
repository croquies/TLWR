import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:tlwr_frontend/application/dynamic_event/cubit/get_dynamic_event_cubit.dart';
import 'package:tlwr_frontend/application/page_node/get_page_node/cubit/get_page_node_cubit.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_auth_required_widget.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';
import 'package:tlwr_graph_viz/data_models/node.dart';
import 'package:tlwr_graph_viz/tlwr_graph_widget.dart';

class ProjectDetailPage extends StatelessWidget {
  final String projectId;
  const ProjectDetailPage({
    Key? key,
    required this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TLWRAuthRequiredWidget(
      builder: (context, authState) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<GetDynamicEventCubit>()
                ..getDynamicEventsByProjectId(projectId),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<GetPageNodeCubit>()..getPageNodesByProjectId(projectId),
            ),
          ],
          child: BlocConsumer<GetDynamicEventCubit, GetDynamicEventState>(
            listener: (context, state) {},
            builder: (context, dynamicEventState) {
              return BlocBuilder<GetPageNodeCubit, GetPageNodeState>(
                builder: (context, pageNodeState) {
                  return TLWRScaffold(
                    child: dynamicEventState.map(
                      initial: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      holding: (stateWithEvents) => pageNodeState.map(
                        initial: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        holding: (stateWithNodes) => TLWRGraphWidget(
                          dynamicEvents: stateWithEvents.events,
                          nodes: stateWithNodes.nodes.map(
                            (pn) => Node(
                                id: pn.id,
                                path: pn.path,
                                label: pn.className,
                                frequency: 1,
                                duration: 1.0),
                          ),
                        ),
                        failed: (_) => const Center(
                          child: Text('Error'),
                        ),
                      ),
                      failed: (_) => const Center(
                        child: Text('Error'),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
