import 'package:build/build.dart';
import 'package:tlwr_generator/builders/node_aggregating_builder.dart';
import 'package:tlwr_generator/builders/page_locating_builder.dart';

Builder locatingBuilder(BuilderOptions options) => PageLocatingBuilder();

Builder nodeAggregatingBuilder(BuilderOptions options) =>
    NodeAggregatingBuilder();
