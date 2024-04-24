import 'package:college_buddy_admin/data/repository/library/i_library_repository.dart';
import 'package:college_buddy_admin/data/repository/library/library_repository.dart';
import 'package:college_buddy_admin/shared/api_client/dio/dio_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final libraryRepoProvider = Provider.autoDispose<ILibraryRepository>(
  (ref) {
    return LibraryRepository(dio: ref.watch(dioProvider));
  },
);
