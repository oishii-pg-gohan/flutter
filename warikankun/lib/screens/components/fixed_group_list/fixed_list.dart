import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warikankun/screens/components/fixed_group_list/fixed_group.dart';
import 'package:warikankun/screens/state/fixed_list_provider.dart';

class FixedList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: _buildFixeds(ref),
    );
  }

  List<FixedGroup> _buildFixeds(WidgetRef ref) {
    List<FixedGroup> list = [];
    final fixedList = ref.watch(fixedListProvider);
    for (int i = 0; i < fixedList.length; i++) {
      list.add(FixedGroup(idx: i, fixed: fixedList[i]));
    }

    return list;
  }
}
