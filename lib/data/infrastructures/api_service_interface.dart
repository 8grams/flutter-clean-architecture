import 'dart:convert';

abstract class ApiServiceInterface {
  Future<Map<String, dynamic>> invokeHttp(
    dynamic url, 
    RequestType type,
    {Map<String, String> headers, dynamic body, Map<String, String> params, Encoding encoding, bool needThrowError}
  );
}

enum RequestType { get, post, put, patch, delete }