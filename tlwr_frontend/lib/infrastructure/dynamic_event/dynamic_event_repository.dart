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
    _logger.d('[DynamicEventRepository] list $projectId');
    try {
      final response = await _supabase.client
          .from(tableName)
          .select()
          .eq('project_id', projectId)
          .execute();

      if (response.error != null) {
        return left(
          Failure.errorWithMessage(
            message: response.error?.message,
          ),
        );
      } else {
        final json = response.data as List<dynamic>;
        final filtered = json
            .where((item) {
              try {
                DynamicEvent.fromJson(item);
                return true;
              } catch (e) {
                _logger.e('${e.toString()} $item');
                return false;
              }
            })
            .map((e) => DynamicEvent.fromJson(e))
            .toList();
        _logger.d(
            '[DynamicEventRepository] ${json.length}, ${filtered.length} $filtered');
        return right(filtered);
      }
    } catch (e) {
      _logger.e('[DynamicEventRepository] ${e.toString()}');
      return left(Failure.errorWithMessage(message: e.toString()));
    }
  }
}
