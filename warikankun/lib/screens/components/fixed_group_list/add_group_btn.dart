import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warikankun/screens/state/fixed_list_provider.dart';

class AddGroupBtn extends ConsumerWidget {
  const AddGroupBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.small(
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      onPressed: () => ref.read(fixedListProvider.notifier).add(),
    );
  }
}
