import 'package:flutter_riverpod/flutter_riverpod.dart';

final bankingMenuIndex = StateProvider<int>((ref) => 0);

final bankingMainIndexProvider = FutureProvider<int>((ref) async {
  final idx = ref.watch(bankingMenuIndex);
  return idx;
});