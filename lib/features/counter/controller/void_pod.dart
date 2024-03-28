import 'package:college_buddy_admin/features/item_data/controller/item_data_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final voidPod = FutureProvider.autoDispose<void>((ref) async {
  ref.watch(itemDataPod(0));

  return;
});
