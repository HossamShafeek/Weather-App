import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/shimmer/shimmer_details_view.dart';
import 'package:weather_app/core/widgets/details_error_widget.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({
    Key? key,
    this.cityName,
    this.latitude,
    this.longitude, this.weatherModel,
  }) : super(key: key);

  final String? cityName;
  final String? latitude;
  final String? longitude;
  final WeatherModel? weatherModel;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {

  @override
  void initState() {
    if (widget.cityName!.isNotEmpty) {
      WeatherCubit.get(context)
          .fetchWeatherByCityName(cityName: widget.cityName!);
    } else if (widget.latitude!.isNotEmpty && widget.longitude!.isNotEmpty) {
      WeatherCubit.get(context).fetchWeatherByUserLocation(
        latitude: widget.latitude.toString(),
        longitude: widget.longitude.toString(),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherByCityNameSuccessState) {
            return DetailsViewBody(
              weatherModel: state.weatherModel,
            );
          } else if (state is WeatherByCityNameFailureState) {
            return DetailsErrorWidget(
              error: state.error,
            );
          } else if (state is WeatherByCityNameLoadingState) {
            return const ShimmerDetailsView();
          } else if (state is WeatherByUserLocationSuccessState) {
            return DetailsViewBody(
              weatherModel: state.weatherModel,
            );
          } else if (state is WeatherByUserLocationFailureState) {
            return DetailsErrorWidget(
              error: state.error,
            );
          } else if (state is WeatherByUserLocationLoadingState) {
            return const ShimmerDetailsView();
          } else {
              return DetailsViewBody(
                weatherModel: widget.weatherModel!,
              );
          }
        },
      ),
    );
  }
}
