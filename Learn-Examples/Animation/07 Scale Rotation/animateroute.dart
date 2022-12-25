import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final Page;
  SlideRight({this.Page})
      : super(
            pageBuilder: (context, animation, animationtwo) => Page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = 0.0;
              var end = 1.0;
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInBack);
              return ScaleTransition(
                scale: tween.animate(curvesanimation),
                child: RotationTransition(
                  turns: tween.animate(curvesanimation),
                  child: child,
                ),
              );
            });
}
