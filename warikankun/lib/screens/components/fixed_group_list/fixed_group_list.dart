import 'package:flutter/cupertino.dart';
import 'package:warikankun/screens/components/common/content_card.dart';
import 'package:warikankun/screens/components/fixed_group_list/fixed_list.dart';

class FixedGroupLit extends StatelessWidget {
  const FixedGroupLit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ContentCard(
          title: 'こてい の きんがく',
          child: FixedList(),
        ),
      ],
    );
  }
}
