import 'package:hooks_riverpod/hooks_riverpod.dart';

final allMemberCntProvider = StateNotifierProvider<AllMemberCnt, int>((ref) {
  return AllMemberCnt();
});

class AllMemberCnt extends StateNotifier<int> {
  AllMemberCnt() : super(0);
  void set(int value) {
    state = value;
  }
}
