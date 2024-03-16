library number_picker;

import 'package:flutter/material.dart';

class NumberPickerIndicator extends StatefulWidget {
  // minimum value of the number picker
  final int? minValue;

  // maximum value of the number picker
  final int? maxValue;

  // current value of the number picker
  int? value;

  // callback when the value of the number picker changes
  final ValueChanged<int>? onChanged;

  NumberPickerIndicator(
      {super.key,
      required this.minValue,
      required this.maxValue,
      required this.value,
      required this.onChanged})
      : assert(minValue! < maxValue! &&
            value! >= minValue! &&
            value! <= maxValue!);

  @override
  State<NumberPickerIndicator> createState() => _NumberPickerIndicatorState();
}

class _NumberPickerIndicatorState extends State<NumberPickerIndicator> {
  @override
  Widget build(BuildContext context) {
    return _slider();
  }

  Widget _slider() {
    return Slider(
      min: widget.minValue!.toDouble(),
      max: widget.maxValue!.toDouble(),
      onChanged: (double value) {
        setState(() {
          widget.value = value.toInt();
          widget.onChanged!(value.toInt());
        });
      },
      value: widget.value!.toDouble(),
    );
  }
}
