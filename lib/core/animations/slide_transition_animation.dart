import 'package:flutter/material.dart';

class SlideTransitionAnimation extends StatefulWidget {
  const SlideTransitionAnimation({
    Key? key,
    required this.child,
    required this.duration,
    required this.begin,
    required this.end,
     this.curve,
  }) : super(key: key);

  final Widget child;
  final Duration duration;
  final Offset begin;
  final Offset end;
  final Curve? curve;

  @override
  State<SlideTransitionAnimation> createState() =>
      _SlideTransitionAnimationState();
}

class _SlideTransitionAnimationState extends State<SlideTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween<Offset>(
      begin: widget.begin,
      end: widget.end,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve??Curves.elasticIn,
      ),
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
