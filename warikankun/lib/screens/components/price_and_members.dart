import 'package:flutter/cupertino.dart';
import 'package:warikankun/screens/components/all.dart';
import 'package:warikankun/screens/components/common/content_card.dart';

class PriceAndMembers extends StatelessWidget {
  const PriceAndMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      title: 'きんがく と にんずう の ごうけい',
      child: All(),
    );
  }
}
