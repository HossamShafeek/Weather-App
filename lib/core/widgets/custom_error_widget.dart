import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.error}) : super(key: key);

  final String error;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Center(
        child: Text(
          error,
          textAlign: TextAlign.center,
          style: AppStyles.textStyle25.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
