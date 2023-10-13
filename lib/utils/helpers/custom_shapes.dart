import 'package:flutter/material.dart';

class CustomShapes extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
