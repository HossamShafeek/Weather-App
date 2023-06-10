import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/feature/onBoarding/presentation/views/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: AppColors.transparent,
        ),
        child: OnBoardingViewBody(),
      ),
    );
  }
}
