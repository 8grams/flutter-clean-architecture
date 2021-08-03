import 'dart:convert';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:refactory_flutter_test/data/infrastructures/api_service_interface.dart';

class ApiService extends ApiServiceInterface {
  Dio _dio;

  ApiService(Dio dio) {
    _dio = dio;
  }

  // send http request
  Future<Map<String, dynamic>> invokeHttp(dynamic url, RequestType type,
      {Map<String, String> headers,
      dynamic body,
      Map<String, String> params,
      Encoding encoding,
      bool needThrowError = true}) async {
    Response response;
    try {
      response = await _invoke(url, type,
          headers: headers, body: jsonEncode(body), params: params);
    } catch (error) {
      rethrow;
    }

    return response.data;
  }

  // setup requiest type and configuration
  Future<Response> _invoke(dynamic url, RequestType type,
      {Map<String, String> headers,
      dynamic body,
      Map<String, String> params}) async {
    Response response;

    try {
      switch (type) {
        case RequestType.get:
          response = await _dio.get(
            url,
            queryParameters: params,
          );
          break;
        case RequestType.post:
          response = await _dio.post(url,
              data: body,
              options: Options(
                headers: headers,
              ));
          break;
        case RequestType.put:
          response = await _dio.put(url,
              data: body, options: Options(headers: headers));
          break;
        case RequestType.patch:
          response = await _dio.patch(url,
              data: body, options: Options(headers: headers));
          break;
        case RequestType.delete:
          response = await _dio.delete(url, options: Options(headers: headers));
          break;
      }
      return response;
    } on DioError catch (_) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
