import 'package:flutter/material.dart';

class ClipperCurveContainer extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.9,
        size.width * 0.2, size.height * 0.9);
    path.lineTo(size.width * 0.8, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.95, size.height * 0.9, size.width, size.height);
    path.lineTo(size.width, size.height * 0.9);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}