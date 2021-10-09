import 'package:freezed_annotation/freezed_annotation.dart';
part 'node.freezed.dart';

@freezed
class Node with _$Node {
  const factory Node({
    required String id,
    required String path,
    required String label,
    required int frequency,
    required double duration,
    Map<String, dynamic>? additionalInfo,
  }) = _Node;
}
