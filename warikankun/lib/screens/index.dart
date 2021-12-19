import 'package:flutter/material.dart';
import 'package:warikankun/screens/components/fixed_group_list/add_group_btn.dart';
import 'package:warikankun/screens/components/fixed_group_list/fixed_group_list.dart';
import 'package:warikankun/screens/components/price_and_members.dart';
import 'package:warikankun/screens/components/result.dart';

///
/// Main screen
///
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

///
/// Main screen state
///
class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Result(), // ひとりあたりの金額
              PriceAndMembers(), // きんがくとにんずう
              FixedGroupLit(), // 固定の金額のグループのリスト
            ],
          ),
        ),
        floatingActionButton: AddGroupBtn(), // 固定の金額のグループ追加ボタン
      ),
    );
  }
}
