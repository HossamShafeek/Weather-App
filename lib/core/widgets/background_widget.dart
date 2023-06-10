import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/widgets/gradient_container_widget.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      width: double.infinity,
      height: double.infinity,
      radius: 0,
      colors: AppColors.backgroundGradient,
      begin: Alignment.topRight,
      end: Alignment.bottomCenter,
      child: child,
    );
  }
}
