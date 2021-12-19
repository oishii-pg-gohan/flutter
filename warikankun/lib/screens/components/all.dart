import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:warikankun/screens/components/input_amount_and_person.dart';
import 'package:warikankun/screens/state/member_cnt_provider.dart';
import 'package:warikankun/screens/state/price_provider.dart';

class All extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 60.0, right: 60.0),
      child: Container(
        child: InputAmountAndPerson(
          onChangeAmount: (value) =>
              ref.read(priceProvider.notifier).set(int.parse(value)),
          onChangePerson: (value) =>
              ref.read(allMemberCntProvider.notifier).set(int.parse(value)),
        ),
      ),
    );
  }
}
