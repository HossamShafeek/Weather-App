import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/config/local/cache_helper.dart';
import 'package:weather/config/routes/app_routes.dart';
import 'package:weather/core/utils/app_colors.dart';
import 'package:weather/feature/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToOnBoardingViewOrHomeView();
    super.initState();
  }

  void navigateToOnBoardingViewOrHomeView() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if(CacheHelper.getBoolean(key: 'onBoarding')??false){
        return Navigator.pushReplacementNamed(context, Routes.homeView);
      }else{
        return Navigator.pushReplacementNamed(context, Routes.onBoardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: AppColors.transparent,
        ),
        child: SplashViewBody(),
      ),
    );
  }
}
