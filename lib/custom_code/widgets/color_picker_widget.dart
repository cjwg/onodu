// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({
    Key? key,
    this.width,
    this.height,
    required this.pickerColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color pickerColor;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<ColorPickerWidget> {
// ValueChanged<Color> callback
  void changeColor(Color color) {
    // setState(() => widget.pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    // return ColorPicker(
    //   pickerColor: widget.pickerColor,
    //   onColorChanged: changeColor,
    // );

    return BlockPicker(
      pickerColor: widget.pickerColor,
      onColorChanged: changeColor,
    );
    // Use Material color picker:
    //
    // child: MaterialPicker(
    //   pickerColor: pickerColor,
    //   onColorChanged: changeColor,
    //   showLabel: true, // only on portrait mode
    // ),
    //
    // Use Block color picker:
    //
    // child: BlockPicker(
    //   pickerColor: currentColor,
    //   onColorChanged: changeColor,
    // ),
    //
    // child: MultipleChoiceBlockPicker(
    //   pickerColors: currentColors,
    //   onColorsChanged: changeColors,
    // ),
  }
}
