import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_asyncnotifier/counter_notifier.dart';

final initialValueProvider = Provider<int>((ref) => 10);

final counterProvider = AsyncNotifierProvider.autoDispose<CounterNotifier, int>(CounterNotifier.new);
