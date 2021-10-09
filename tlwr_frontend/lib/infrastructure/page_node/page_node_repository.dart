import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tlwr_frontend/domain/core/failure.dart';
import 'package:tlwr_frontend/domain/page_node/i_page_node_repository.dart';
import 'package:tlwr_frontend/domain/page_node/page_node.dart';

@LazySingleton(as: IPageNodeRepository)
class PageNodeRepository implements IPageNodeRepository {
  PageNodeRepository(this._supabase, this._logger);

  final Supabase _supabase;
  final Logger _logger;

  final String tableName = 'page_nodes';

  @override
  Future<Either<Failure, List<PageNode>>> list(String projectId) async {
    _logger.d('[PageNodeRepository] list');
    try {
      final response = await _supabase.client
          .from(tableName)
          .select()
          .filter(
            'project_id',
            'eq',
            projectId,
          )
          .execute();
      if (response.error != null) {
        return left(
          Failure.errorWithMessage(
            message: response.error?.message,
          ),
        );
      } else {
        final json = response.data as List<dynamic>;
        return right(json.map((item) => PageNode.fromJson(item)).toList());
      }
    } catch (e) {
      _logger.e('[PageNodeRepository] ${e.toString()}');
      return left(Failure.errorWithMessage(message: e.toString()));
    }
  }
}
