import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/widgets/page_indicator_widget.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/details_page_view.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({Key? key, required this.weatherModel})
      : super(key: key);

  final WeatherModel weatherModel;

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        DetailsPageView(
          weatherModel: widget.weatherModel,
          pageController: pageController,
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: AppConstants.defaultPadding),
          child: PageIndicatorWidget(
            pageController: pageController,
            dotColor: AppColors.white,
            count: widget.weatherModel.forecast!.forecastday!.length,
          ),
        ),
      ],
    );
  }
}

