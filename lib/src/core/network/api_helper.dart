import 'dart:convert';
import 'package:datainflutter/src/core/network/api_response.dart';
import 'package:datainflutter/src/core/storage/storage_helper.dart';
import 'package:datainflutter/src/core/storage/storage_keys.dart';
import 'package:dio/dio.dart';

class ApiHelper {
  static final ApiHelper _instance = ApiHelper._internal();
  factory ApiHelper() => _instance;

  ApiHelper._internal();

  final Dio _dio = Dio(
    BaseOptions(
      contentType: 'application/json',
      baseUrl: 'http://dducusat.fluttertrainer.in/',
      connectTimeout: const Duration(minutes: 2),
      receiveTimeout: const Duration(minutes: 2),
    ),
  );

  Future<ApiResponse> makeGetRequest(String route,
      {Map<String, dynamic>? header,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Map<String, dynamic> defaultHeaders = await getEssentialHeaders();
      defaultHeaders.addAll(header ?? {});

      Response response = await _dio.get(route,
          queryParameters: queryParameters,
          options: Options(headers: defaultHeaders));

      return ApiResponse.fromJSON(response.data);
    } catch (e) {
      return ApiResponse(status: false, error: 'Something went wrong');
    }
  }

  Future<ApiResponse> makePostRequest(String route, Map<String, dynamic> body,
      {Map<String, dynamic>? header,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Map<String, dynamic> defaultHeaders = await getEssentialHeaders();
      defaultHeaders.addAll(header ?? {});

      Response response = await _dio.post(route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
          options: Options(headers: header));

      return ApiResponse.fromJSON(response.data);
    } catch (e) {
      return ApiResponse(status: false, error: 'Something went wrong');
    }
  }

  Future<ApiResponse> makePatchRequest(String route, Map<String, dynamic> body,
      {Map<String, dynamic>? header,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Map<String, dynamic> defaultHeaders = await getEssentialHeaders();
      defaultHeaders.addAll(header ?? {});

      Response response = await _dio.patch(route,
          data: jsonEncode(body),
          queryParameters: queryParameters,
          options: Options(headers: header));

      return ApiResponse.fromJSON(response.data);
    } catch (e) {
      return ApiResponse(status: false, error: 'Something went wrong');
    }
  }

  Future<ApiResponse> makeDeleteRequest(String route,
      {Map<String, dynamic>? header,
      Map<String, dynamic>? queryParameters}) async {
    try {
      Map<String, dynamic> defaultHeaders = await getEssentialHeaders();
      defaultHeaders.addAll(header ?? {});

      Response response = await _dio.delete(route,
          queryParameters: queryParameters, options: Options(headers: header));

      return ApiResponse.fromJSON(response.data);
    } catch (e) {
      return ApiResponse(status: false, error: 'Something went wrong');
    }
  }

  Future<Map<String, dynamic>> getEssentialHeaders() async {
    String? readToken = await StorageHelper().readData(StorageKeys.userToken);
    if (readToken == null) {
      return {};
    }
    return {"Authorization": "Bearer $readToken"};
  }
}
