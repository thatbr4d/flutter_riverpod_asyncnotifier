import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_asyncnotifier/providers.dart';

class CounterNotifier extends AutoDisposeAsyncNotifier<int> {
  int data = 0;

  @override
  FutureOr<int> build() async {
    // fake loading data from api
    await Future.delayed(const Duration(seconds: 1));
    return data = ref.watch(initialValueProvider);
  }

  void increment() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(milliseconds: 200));
    state = AsyncValue.data(++data);
  }
}
