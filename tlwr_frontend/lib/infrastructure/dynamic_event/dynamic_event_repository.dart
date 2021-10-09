import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tlwr_frontend/domain/core/failure.dart';
import 'package:tlwr_frontend/domain/dynamic_event/i_dynamic_event_repository.dart';
import 'package:tlwr_graph_viz/data_models/dynamic_event.dart';

@LazySingleton(as: IDynamicEventRepository)
class DynamicEventRepository implements IDynamicEventRepository {
  DynamicEventRepository(this._supabase, this._logger);

  final Supabase _supabase;
  final Logger _logger;

  final String tableName = 'dynamic_events';

  @override
  Future<Either<Failure, List<DynamicEvent>>> list(String projectId) async {
    _logger.d('list');
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
        return right(json.map((item) => DynamicEvent.fromJson(item)).toList());
      }
    } catch (e) {
      _logger.e(e.toString());
      return left(Failure.errorWithMessage(message: e.toString()));
    }
  }
}
