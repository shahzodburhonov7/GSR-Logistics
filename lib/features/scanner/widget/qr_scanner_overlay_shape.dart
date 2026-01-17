import 'package:flutter/material.dart';

class QrScannerOverlayShape extends ShapeBorder {
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final double borderLength;
  final double cutOutSize;

  const QrScannerOverlayShape({
    this.borderColor = Colors.white,
    this.borderWidth = 10,
    this.borderRadius = 10,
    this.borderLength = 30,
    this.cutOutSize = 250,
  });

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(10);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      Path()..addRect(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final width = rect.width;
    final height = rect.height;
    final boxWidth = cutOutSize;
    final boxHeight = cutOutSize;

    final left = (width - boxWidth) / 2;
    final top = (height - boxHeight) / 2;

    final backgroundPaint = Paint()
      ..color = Colors.black54 // Atrofni qorong'ulash
      ..style = PaintingStyle.fill;

    final cutOutRect = Rect.fromLTWH(left, top, boxWidth, boxHeight);

    // Ekranni to'liq bo'yash va o'rtasini kesib olish
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(rect),
        Path()..addRRect(RRect.fromRectAndRadius(cutOutRect, Radius.circular(borderRadius))),
      ),
      backgroundPaint,
    );

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    // Burchaklarni chizish (L-simon shakllar)
    final path = Path()
    // Yuqori chap
      ..moveTo(left, top + borderLength)
      ..lineTo(left, top + borderRadius)
      ..arcToPoint(Offset(left + borderRadius, top), radius: Radius.circular(borderRadius))
      ..lineTo(left + borderLength, top)
    // Yuqori o'ng
      ..moveTo(left + boxWidth - borderLength, top)
      ..lineTo(left + boxWidth - borderRadius, top)
      ..arcToPoint(Offset(left + boxWidth, top + borderRadius), radius: Radius.circular(borderRadius))
      ..lineTo(left + boxWidth, top + borderLength)
    // Pastki o'ng
      ..moveTo(left + boxWidth, top + boxHeight - borderLength)
      ..lineTo(left + boxWidth, top + boxHeight - borderRadius)
      ..arcToPoint(Offset(left + boxWidth - borderRadius, top + boxHeight), radius: Radius.circular(borderRadius))
      ..lineTo(left + boxWidth - borderLength, top + boxHeight)
    // Pastki chap
      ..moveTo(left + borderLength, top + boxHeight)
      ..lineTo(left + borderRadius, top + boxHeight)
      ..arcToPoint(Offset(left, top + boxHeight - borderRadius), radius: Radius.circular(borderRadius))
      ..lineTo(left, top + boxHeight - borderLength);

    canvas.drawPath(path, borderPaint);
  }

  @override
  ShapeBorder scale(double t) => this;
}