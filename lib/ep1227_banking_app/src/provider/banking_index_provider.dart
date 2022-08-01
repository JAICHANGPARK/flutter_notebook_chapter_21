import 'package:flutter_riverpod/flutter_riverpod.dart';

final bankingMenuIndex = StateProvider<int>((ref) => 0);

final bankingMainIndexProvider = FutureProvider<int?>((ref)  {
  final idx = ref.read(bankingMenuIndex);
  print(idx);
  return  fetchFakeIndex(idx);
});

Future<int?> fetchFakeIndex(int i) async {
  await Future.delayed(Duration(seconds: 1));
  return i;
}
