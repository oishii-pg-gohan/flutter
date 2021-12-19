import 'package:flutter/material.dart';

class NumberTextField extends StatelessWidget {
  NumberTextField({required this.onChanged});
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 25.0),
      onChanged: (value) => onChanged(value),
    );
  }
}
