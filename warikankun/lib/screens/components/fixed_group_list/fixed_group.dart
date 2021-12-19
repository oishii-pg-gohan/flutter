import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warikankun/screens/components/input_amount_and_person.dart';
import 'package:warikankun/screens/components/label.dart';
import 'package:warikankun/screens/state/fixed_list_provider.dart';

class FixedGroup extends ConsumerWidget {
  FixedGroup({required this.idx, required this.fixed});
  final int idx;
  final Fixed fixed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Label(text: 'ぐるーぷ${idx + 1}'),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InputAmountAndPerson(
                onChangeAmount: (value) =>
                    ref.read(fixedListProvider.notifier).set(
                          id: this.fixed.id,
                          amount: int.parse(value),
                          memberCnt: this.fixed.memberCnt,
                        ),
                onChangePerson: (value) =>
                    ref.read(fixedListProvider.notifier).set(
                          id: this.fixed.id,
                          amount: this.fixed.amount,
                          memberCnt: int.parse(value),
                        ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
