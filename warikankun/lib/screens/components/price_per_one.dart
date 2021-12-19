import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:warikankun/screens/state/fixed_list_provider.dart';
import 'package:warikankun/screens/state/member_cnt_provider.dart';
import 'package:warikankun/screens/state/price_provider.dart';

final formatter = NumberFormat("#,###");

class PricePerOne extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final price = ref.watch(priceProvider);
    final memberCnt = ref.watch(allMemberCntProvider);
    final fixedList = ref.watch(fixedListProvider);

    int priceWithoutFixed = price;
    int memberCntWithoutFixed = memberCnt;
    fixedList.forEach((fixed) {
      priceWithoutFixed = priceWithoutFixed - (fixed.amount * fixed.memberCnt);
      memberCntWithoutFixed = memberCntWithoutFixed - fixed.memberCnt;
    });

    double pricePerOne = (price != 0 && memberCnt != 0)
        ? priceWithoutFixed / memberCntWithoutFixed
        : 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        '￥ ${formatter.format(pricePerOne)}',
        style: TextStyle(
          fontSize: 60.0,
        ),
      ),
    );
  }
}
