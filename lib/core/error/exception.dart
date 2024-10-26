import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'failures.dart';

/// return type must be Either<Failure, T>
class ExceptionHandler<T> {
  Either<Failure, T> onRepo(
    dynamic e,
    StackTrace? stackTrace,
  ) {
    debugPrintStack(
      stackTrace: stackTrace,
      label: e.runtimeType.toString(),
    );
    if (e is CustomException) {
      return left(Failure(messages: e.message));
    } else {
      if (kDebugMode) {
        return left(Failure(messages: e.toString()));
      }

      return left(const Failure());
    }
  }

  Either<S, T> onRepoCustom<S extends Failure>(
    dynamic e,
    StackTrace? stackTrace,
    S Function(String?) factory,
  ) {
    debugPrint('exception handler ${e.toString()}', wrapWidth: 999);

    if (e is CustomException) {
      return left(factory.call(e.toString()));
    } else {
      return left(factory.call(null));
    }
  }
}

class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() {
    return message;
  }
}
