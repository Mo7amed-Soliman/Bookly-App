import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);
  static const String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  //? get request method
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
