library number_picker;

import 'package:flutter/material.dart';
import 'package:number_picker/src/slider_shape.dart';

// TODO add widget for title and picked number
class NumberPickerIndicator extends StatefulWidget {
  // minimum value of the number picker
  final int? minValue;

  // maximum value of the number picker
  final int? maxValue;

  // callback when the value of the number picker changes
  final ValueChanged<int>? onChanged;

  // thumb color of the number picker
  final Color? thumbColor;

  // active color of the number picker
  final Color? activeColor;

  // inactive color of the number picker
  final Color? inactiveColor;

  // title of the number picker
  final String? title;

  // show title of the number picker
  final bool showTitle;

  // show number of the number picker
  final bool showNumber;

  // current value of the number picker
  int? value;

  NumberPickerIndicator(
      {super.key,
      required this.minValue,
      required this.maxValue,
      required this.value,
      required this.onChanged,
      this.thumbColor,
      this.activeColor,
      this.inactiveColor,
      this.showNumber = false,
      this.showTitle = false,
      this.title = ''})
      : assert(
            minValue! < maxValue! && value! >= minValue && value <= maxValue);

  @override
  State<NumberPickerIndicator> createState() => _NumberPickerIndicatorState();
}

class _NumberPickerIndicatorState extends State<NumberPickerIndicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _titleAndNumber(),
        _slider(),
      ],
    );
  }

  Widget _slider() {
    return SliderTheme(
      data: SliderThemeData(
        thumbShape: AppSliderShape(
            thumbRadius: 10,
            thumbColor:
                widget.thumbColor ?? Theme.of(context).colorScheme.primary,
            iconData: null),
      ),
      child: Slider(
        min: widget.minValue!.toDouble(),
        max: widget.maxValue!.toDouble(),
        activeColor:
            widget.activeColor ?? Theme.of(context).colorScheme.secondary,
        inactiveColor: widget.inactiveColor ??
            Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        onChanged: (double value) {
          setState(() {
            widget.value = value.toInt();
            widget.onChanged!(value.toInt());
          });
        },
        value: widget.value!.toDouble(),
      ),
    );
  }

  Widget _titleAndNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (widget.showTitle) _title(),
        if (widget.showNumber) _number(),
      ],
    );
  }

  Widget _title() {
    return Text('Number Picker');
  }

  Widget _number() {
    return Text(widget.value.toString());
  }
}
