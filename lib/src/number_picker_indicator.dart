library number_picker;

import 'package:flutter/material.dart';

class NumberPickerIndicator extends StatefulWidget {
  // minimum value of the number picker
  final int? minValue;

  // maximum value of the number picker
  final int? maxValue;

  // current value of the number picker
  final int? value;

// callback when the value of the number picker changes
  final ValueChanged<int>? onChanged;

  const NumberPickerIndicator(
      {super.key,
      required this.minValue,
      required this.maxValue,
      required this.value,
      required this.onChanged});

  @override
  State<NumberPickerIndicator> createState() => _NumberPickerIndicatorState();
}

class _NumberPickerIndicatorState extends State<NumberPickerIndicator> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
