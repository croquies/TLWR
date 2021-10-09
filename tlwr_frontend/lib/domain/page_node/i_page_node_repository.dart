import 'package:dartz/dartz.dart';
import 'package:tlwr_frontend/domain/core/failure.dart';
import 'package:tlwr_frontend/domain/page_node/page_node.dart';

abstract class IPageNodeRepository {
  Future<Either<Failure, List<PageNode>>> list(String projectId);
}
