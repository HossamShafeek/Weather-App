import 'package:get_it/get_it.dart';
import 'package:weather/core/api/api_services_implementation.dart';
import 'package:weather/feature/home/data/repository/home_repository_implementation.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServicesImplementation>(
      ApiServicesImplementation());
  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(getIt.get<ApiServicesImplementation>()));
}