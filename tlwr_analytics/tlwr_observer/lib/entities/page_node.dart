import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_node.freezed.dart';

@freezed
class PageNode with _$PageNode {
  const factory PageNode({
    required String path,
    String? className,
    Map<String, dynamic>? additionalInfo,
  }) = _PageNode;
}
