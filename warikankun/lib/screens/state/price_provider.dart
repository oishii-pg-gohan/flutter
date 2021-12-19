import 'package:hooks_riverpod/hooks_riverpod.dart';

final priceProvider = StateNotifierProvider<Price, int>((ref) {
  return Price();
});

class Price extends StateNotifier<int> {
  Price() : super(0);
  void set(int value) {
    state = value;
  }
}
