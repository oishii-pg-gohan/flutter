import 'package:flutter/cupertino.dart';
import 'package:warikankun/screens/components/common/content_card.dart';
import 'package:warikankun/screens/components/price_per_one.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      title: 'ひとりあたり',
      child: PricePerOne(),
    );
  }
}
