import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../error/exception.dart';
import '../services.dart';

@injectable
class DBConnection extends Services {
  DBConnection() : super();

  @override
  @protected
  String generateUrl(String path) => 'https://api.escuelajs.co/api/v1/$path';

  Future<List<dynamic>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.get(
        generateUrl(path),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
        queryParameters: queryParameters,
      );

      if (response.statusCode != 200) {
        throw CustomException("message: Connection Error");
      }

      var responseMap = response.data ?? {};

      try {
        material.debugPrint("\x1B[32m start of Response $path");
        material.debugPrint("\t${json.encode(responseMap)}", wrapWidth: 9999);
        material.debugPrint("\x1B[32m end of Response $path");
      } catch (e) {}

      return responseMap;
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException('Server error');
    }
  }
}
