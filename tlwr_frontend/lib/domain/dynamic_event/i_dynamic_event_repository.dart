import 'package:dartz/dartz.dart';
import 'package:tlwr_frontend/domain/core/failure.dart';
import 'package:tlwr_graph_viz/data_models/dynamic_event.dart';

abstract class IDynamicEventRepository {
  Future<Either<Failure, List<DynamicEvent>>> list(String projectId);
}
