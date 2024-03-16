import 'package:flutter/material.dart';

class AppSliderShape extends SliderComponentShape {
  final double thumbRadius;
  final Color? thumbColor;
  final IconData? iconData;

  const AppSliderShape(
      {required this.thumbRadius, this.thumbColor, this.iconData});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = thumbColor ?? Colors.white;

    // draw icon with text painter
    final TextPainter textPainter =
        TextPainter(textDirection: TextDirection.rtl);
    textPainter.text = TextSpan(
        text: iconData?.codePoint != null
            ? String.fromCharCode(iconData!.codePoint)
            : null,
        style: TextStyle(
          fontSize: thumbRadius * 2,
          fontFamily: iconData?.codePoint != null ? iconData!.fontFamily : null,
          color: thumbColor ?? sliderTheme.thumbColor,
        ));
    textPainter.layout();

    final Offset textCenter = Offset(center.dx - (textPainter.width / 2),
        center.dy - (textPainter.height / 2));
    const cornerRadius = 4.0;

    // draw the background shape here..
    canvas.drawRRect(
      RRect.fromRectXY(Rect.fromCenter(center: center, width: 30, height: 20),
          cornerRadius, cornerRadius),
      paint,
    );

    textPainter.paint(canvas, textCenter);
  }
}
