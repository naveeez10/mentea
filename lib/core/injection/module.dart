import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @prod
  @lazySingleton
  Dio get dioProd => Dio(
        BaseOptions(
          baseUrl: 'https://example.com',
          connectTimeout: Duration(seconds: 15),
          receiveTimeout: Duration(seconds: 15),
        ),
      );

  @prod
  @lazySingleton
  Logger get loggerProd => Logger(printer: null);

  @test
  @lazySingleton
  Logger get loggerTest => Logger(printer: PrettyPrinter(lineLength: 80, methodCount: 1));
}
