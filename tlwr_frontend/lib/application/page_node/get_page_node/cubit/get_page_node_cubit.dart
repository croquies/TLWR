import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tlwr_frontend/domain/page_node/i_page_node_repository.dart';
import 'package:tlwr_frontend/domain/page_node/page_node.dart';

part 'get_page_node_state.dart';
part 'get_page_node_cubit.freezed.dart';

@injectable
class GetPageNodeCubit extends Cubit<GetPageNodeState> {
  GetPageNodeCubit(this._repository) : super(const GetPageNodeState.initial());

  final IPageNodeRepository _repository;

  Future<void> getPageNodesByProjectId(String projectId) async {
    final failureOrEvents = await _repository.list(projectId);
    failureOrEvents.fold(
      (l) => emit(const GetPageNodeState.failed()),
      (r) => emit(
        GetPageNodeState.holding(
          KtList.from(r),
        ),
      ),
    );
  }
}
