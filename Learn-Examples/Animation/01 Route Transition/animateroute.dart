import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final Page;
  SlideRight({this.Page})
      : super(
            pageBuilder: (context, animation, animationtwo) => Page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = Offset(1, 0);
              var end = Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            });
}
