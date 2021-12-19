import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final fixedListProvider = StateNotifierProvider<FixedList, List<Fixed>>((ref) {
  return FixedList();
});

class FixedList extends StateNotifier<List<Fixed>> {
  FixedList([List<Fixed>? initialTodos]) : super(initialTodos ?? []);

  void add() {
    String uuid = Uuid().v4();
    state = [
      ...state,
      Fixed(id: uuid, amount: 0, memberCnt: 0),
    ];
  }

  void set({
    required String id,
    required int amount,
    required int memberCnt,
  }) {
    state = [
      for (final fixed in state)
        if (fixed.id == id)
          Fixed(id: id, amount: amount, memberCnt: memberCnt)
        else
          fixed
    ];
  }

  void remove(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }

  Fixed get(int idx) {
    return state[idx];
  }
}

class Fixed {
  Fixed({
    required this.id,
    required this.amount,
    required this.memberCnt,
  });

  final String id;
  final int amount;
  final int memberCnt;
}
