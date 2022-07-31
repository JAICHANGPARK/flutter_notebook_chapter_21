import 'package:flutter_riverpod/flutter_riverpod.dart';

final bankingMenuIndex = StateProvider<int>((ref) => 0);

final bankingMainIndexProvider = FutureProvider<int?>((ref) async {
  final idx = ref.watch(bankingMenuIndex);
  return fetchFakeIndex(idx);
});

Future<int?> fetchFakeIndex(int i) async {
  Future.delayed(Duration(seconds: 1)).then((value) {
    return i;
  });
  return null;
}
