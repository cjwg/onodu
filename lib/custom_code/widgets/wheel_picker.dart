// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:wheel_chooser/wheel_chooser.dart';

class WheelPicker extends StatefulWidget {
  const WheelPicker({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _WheelPickerState createState() => _WheelPickerState();
}

class _WheelPickerState extends State<WheelPicker> {
  @override
  Widget build(BuildContext context) {
    return WheelChooser.integer(
      onValueChanged: (s) => print(s.toString()),
      maxValue: 20,
      minValue: 1,
      initValue: 9,
      horizontal: true,
      unSelectTextStyle: TextStyle(color: Colors.grey),
    );
  }
}
