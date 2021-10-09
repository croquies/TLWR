import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:tlwr_frontend/domain/dynamic_event/i_dynamic_event_repository.dart';
import 'package:tlwr_graph_viz/data_models/dynamic_event.dart';

part 'get_dynamic_event_cubit.freezed.dart';
part 'get_dynamic_event_state.dart';

@injectable
class GetDynamicEventCubit extends Cubit<GetDynamicEventState> {
  GetDynamicEventCubit(this._repository)
      : super(const GetDynamicEventState.initial());
  final IDynamicEventRepository _repository;

  Future<void> getDynamicEventsByProjectId(String projectId) async {
    final failureOrEvents = await _repository.list(projectId);
    failureOrEvents.fold(
      (l) => emit(const GetDynamicEventState.failed()),
      (r) => emit(
        GetDynamicEventState.holding(
          KtList.from(r),
        ),
      ),
    );
  }
}
