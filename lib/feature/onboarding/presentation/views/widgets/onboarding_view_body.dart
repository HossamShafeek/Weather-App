import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/utils/app_constants.dart';
import 'package:weather/core/widgets/background_widget.dart';
import 'package:weather/core/widgets/logo_widget.dart';
import 'package:weather/feature/onboarding/presentation/views/widgets/container_details_widget.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40.h,
            left: AppConstants.defaultPadding,
            right: AppConstants.defaultPadding,
            bottom: AppConstants.defaultPadding,
          ),
          child: Column(
            children: const [
              LogoWidget(),
              Spacer(),
              ContainerDetailsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
