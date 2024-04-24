import 'package:college_buddy_admin/data/models/library_details_model.dart';
import 'package:college_buddy_admin/data/repository/library/library_repo_pod.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final libraryProvider = FutureProvider.autoDispose<AllLibraryModel>((ref) async {
  final result = await ref.watch(libraryRepoProvider).getAllLibrary(cancelToken: ref.cancelToken());
  return result.when((libraryModel) => libraryModel, (error) => throw (error.errorMessage));
});
