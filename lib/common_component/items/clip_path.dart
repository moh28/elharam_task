
import 'package:flutter/material.dart';

class KClippPathAppbar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset Controllpoint = Offset(size.width * .30, size.height);
    Offset endpoint = Offset(size.width * .37, size.height * .90);
    Offset Controllpoint2 = Offset(size.width * .39, size.height * .867);
    Offset endpoint2 = Offset(size.width * .5, size.height * .858);
    Offset Controllpoint3 = Offset(size.width * .60, size.height * .85);
    Offset endpoint3 = Offset(size.width * .70, size.height * .95);
    Offset Controllpoint4 = Offset(size.width * .74, size.height);
    Offset endpoint4 = Offset(size.width * .95, size.height);
    Offset Controllpoint5 = Offset(size.width * .20, size.height * 2);
    Offset endpoint5 = Offset(size.width * .20, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
    // ..lineTo(size.width * .10, size.height)
      ..quadraticBezierTo(
          Controllpoint5.dx, Controllpoint5.dy, endpoint5.dx, endpoint5.dy)
      ..lineTo(size.width * .11, size.height)
      ..quadraticBezierTo(
          Controllpoint.dx, Controllpoint.dy, endpoint.dx, endpoint.dy)
      ..quadraticBezierTo(
          Controllpoint2.dx, Controllpoint2.dy, endpoint2.dx, endpoint2.dy)
      ..quadraticBezierTo(
          Controllpoint3.dx, Controllpoint3.dy, endpoint3.dx, endpoint3.dy)
      ..quadraticBezierTo(
          Controllpoint4.dx, Controllpoint4.dy, endpoint4.dx, endpoint4.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
    }
}

