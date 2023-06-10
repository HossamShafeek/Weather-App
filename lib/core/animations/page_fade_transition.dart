import 'package:flutter/cupertino.dart';

class PageFadeTransition extends PageRouteBuilder {
  final Widget page;


  PageFadeTransition({required this.page})
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) => page,
        );

  @override
  Widget buildTransitions(context, animation, secondaryAnimation, child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
