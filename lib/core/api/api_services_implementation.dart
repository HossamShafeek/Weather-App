import 'package:dio/dio.dart';
import 'package:weather_app/core/api/api_services.dart';
import 'package:weather_app/core/api/end_points.dart';

class ApiServicesImplementation implements ApiServices {
  Dio? _dio;
  ApiServicesImplementation() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 10 * 1000, //10 second
      receiveTimeout: 10 * 1000,
    );
    _dio = Dio(baseOptions);
  }
  @override
  Future<Map<String, dynamic>> get({
    required String endPoint,
    required Map<String, dynamic> queryParameters,
  }) async {
    Response response =
        await _dio!.get(endPoint, queryParameters: queryParameters);
    return response.data;
  }
}
