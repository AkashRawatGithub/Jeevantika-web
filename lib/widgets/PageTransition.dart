import 'package:flutter/cupertino.dart';

class PageTransition extends PageRouteBuilder{

  final Widget widget;

  PageTransition({required this.widget}):super(
    transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, animation, secondaryAnimation) => widget
  );
}
class SlideScreenTransition extends PageRouteBuilder{

  final Widget widget;

  SlideScreenTransition({required this.widget}):super(
    transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, animation, secondaryAnimation) => widget
  );
}