import 'package:flutter/material.dart';

class GradientContainerWidget extends StatelessWidget {
  const GradientContainerWidget({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.margin,
    required this.colors,
    required this.begin,
    required this.end,
  }) : super(key: key);

  final double? width, height, radius;
  final List<Color> colors;
  final AlignmentGeometry begin, end;
  final Widget? child;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0),
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
      child: child,
    );
  }
}
