import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:warikankun/screens/index.dart';

void main() {
  runApp(
    ProviderScope(
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
    );
  }
}
