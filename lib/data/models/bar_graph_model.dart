import 'dart:ui';

import 'package:college_buddy_admin/data/models/graph_model.dart';

class BarGraphModel {
  final Color color;
  final String label;
  final List<GraphModel> graph;

  BarGraphModel({required this.color, required this.label, required this.graph});
}
