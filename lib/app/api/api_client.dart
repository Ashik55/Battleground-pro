import 'dart:io';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

const API_BASE_URL = "https://cribfinder.parallaxlogic.dev/api/v1/";
const API_STORAGE_URL = "https://cribfinder.parallaxlogic.dev/storage/";

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiClient extends GetxService {
  late Dio _dio;

  //this is for header
  static header() => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        if (LocalStorage().getToken() != null)
          'Authorization': 'Bearer ${LocalStorage().getToken()}',
      };

  Future<ApiClient> init() async {
    _dio = Dio(BaseOptions(
      baseUrl: API_BASE_URL,
      headers: header(),
      connectTimeout: 5000,
      receiveTimeout: 6000,
    ));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print('REQUEST[${options.method}] => PATH: $API_BASE_URL${options.path} '
          '=> Parameters : ${options.queryParameters}, => HEADERS: ${options.headers}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      print('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    }, onError: (err, handler) {
      print('ERROR[${err.response?.statusCode}]');
      return handler.next(err);
    }));
  }

  Future<dynamic> request(String url, Method method,
      {Map<String, dynamic>? params, Map<String, dynamic>? body}) async {
    Response response;

    try {
      if (method == Method.POST) {
        response = await _dio.post(url, queryParameters: params, data: body);
      } else if (method == Method.DELETE) {
        response = await _dio.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio.patch(url);
      } else {
        response = await _dio.get(
          url,
          queryParameters: params,
        );
      }

      print(response);

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Internal Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch (e) {
      throw Exception("No Internet Connection");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception("Connection  Timeout Exception");
      }
      print(e.message);
      throw Exception("Sorry Server is not responding as expected");
    } catch (e) {
      throw Exception("Something Went Wrong");
    }
  }
}
