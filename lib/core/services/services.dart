import 'package:dio/dio.dart';
import 'package:flutter/material.dart' as material;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Services {
  String generateUrl(String path) => '';
  Dio? _dio;

  Dio get dio {
    var current = _dio;
    if (current != null) {
      return current;
    }

    current = Dio();
    current.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      maxWidth: 150,
      logPrint: (object) => material.debugPrint(object.toString()),
    ));
    return current;
  }

  Map<String, String> generateHeader(
  ) {
    return {
      'Content-Type': 'application/json; charset=utf-8',
    };
  }
}
