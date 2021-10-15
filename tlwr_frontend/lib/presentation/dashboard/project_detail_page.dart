import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:tlwr_frontend/application/dynamic_event/cubit/get_dynamic_event_cubit.dart';
import 'package:tlwr_frontend/application/page_node/get_page_node/cubit/get_page_node_cubit.dart';
import 'package:tlwr_frontend/injectable.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_text.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_auth_required_widget.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_scaffold.dart';
import 'package:tlwr_graph_viz/data_models/node.dart';
import 'package:tlwr_graph_viz/tlwr_graph_widget.dart';
import 'package:tlwr_observer/tlwr_observer.dart';

class ProjectDetailPage extends StatelessWidget {
  ProjectDetailPage({
    Key? key,
    required this.projectId,
  }) : super(key: key);

  final String projectId;
  final Logger _logger = getIt<Logger>();

  @override
  Widget build(BuildContext context) {
    return TLWRPageWidget(
      label: 'Project detail',
      child: TLWRAuthRequiredWidget(
        builder: (context, authState) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<GetDynamicEventCubit>()
                  ..getDynamicEventsByProjectId(projectId),
              ),
              BlocProvider(
                create: (context) => getIt<GetPageNodeCubit>()
                  ..getPageNodesByProjectId(projectId),
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
                        holding: (stateWithEvents) {
                          return pageNodeState.map(
                            initial: (_) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            holding: (stateWithNodes) {
                              final nodes = stateWithNodes.nodes.map(
                                (pn) => Node(
                                  id: pn.id,
                                  path: pn.path,
                                  label: pn.className,
                                  frequency: 1,
                                  duration: 1,
                                  additionalInfo: {
                                    'initial': true,
                                  },
                                ),
                              );
                              if (nodes.size > 0) {
                                return TLWRGraphWidget(
                                  dynamicEvents: stateWithEvents.events,
                                  nodes: nodes,
                                );
                              } else {
                                return const Center(
                                  child: TLWRText.heading2('No data'),
                                );
                              }
                            },
                            failed: (_) => const Center(
                              child: TLWRText.heading2('Error'),
                            ),
                          );
                        },
                        failed: (_) => const Center(
                          child: TLWRText.heading2('Error'),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
