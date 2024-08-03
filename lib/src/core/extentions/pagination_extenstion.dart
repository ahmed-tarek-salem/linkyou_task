import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension PaginationExtenstion<T> on PagingController<int, T> {
  void nextPage({
    required Future<List<T>?> Function() func,
  }) async {
    try {
      final data = await func() ?? [];

      if (data.length < 10) {
        appendLastPage(data);
        return;
      }

      appendPage(data, nextPageKey! + 1);
    } catch (e) {
      error = e;
      rethrow;
    }
  }
}
