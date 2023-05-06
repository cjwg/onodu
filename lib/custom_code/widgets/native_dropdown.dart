// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:uipickers/uipickers.dart';

class NativeDropdown extends StatefulWidget {
  const NativeDropdown({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NativeDropdownState createState() => _NativeDropdownState();
}

class _NativeDropdownState extends State<NativeDropdown> {
  int selectedItem = 0;
  DateTime selectedDate = DateTime.now();
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final items = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(100, 140, 20, 20),
        child: Column(children: [
          SizedBox(
              width: 150,
              height: 34,
              child: AdaptivePicker(
                  key: key1,
                  type: AdaptivePickerType.material,
                  items: items,
                  value: selectedItem,
                  dropDownItemTextColor: Colors.green,
                  onChanged: (val) {
                    setState(() {
                      selectedItem = val ?? 0;
                      selectedDate =
                          DateTime.now().add(Duration(days: selectedItem));
                    });
                  })),
          const SizedBox(height: 12),
          SizedBox(
              width: 150,
              height: 34,
              child: AdaptiveDatePicker(
                key: key2,
                type: AdaptiveDatePickerType.material,
                initialDate: selectedDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 10)),
                onChanged: (date) {
                  setState(() {
                    selectedDate = date;
                    selectedItem = daysBetween(DateTime.now(), selectedDate);
                  });
                },
              ))
        ]));
  }

  int daysBetween(DateTime from, DateTime to) {
    var fromD = DateTime(from.year, from.month, from.day);
    var toD = DateTime(to.year, to.month, to.day);
    return (toD.difference(fromD).inHours / 24).round();
  }
}
