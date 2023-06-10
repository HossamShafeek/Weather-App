import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feature/onboarding/presentation/cubit/onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitialState());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  final PageController pageController = PageController();

  List<String> titles = [
    'Discover the weather in your city and plan your day correctly',
    'You can know the weather by your location',
    'You can know the weather for seven days and for every hour throughout the day',
  ];

  bool isLast = false;

  void onChangePageView(int index) {
    if (index == titles.length - 1) {
      isLast = true;
      emit(OnChangePageViewState());
    } else {
      isLast = false;
      emit(OnChangePageViewState());
    }
  }
}
