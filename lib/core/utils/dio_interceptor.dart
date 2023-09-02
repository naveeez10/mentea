import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../database/sembast_db.dart';

class DioInterceptor extends InterceptorsWrapper {
  DioInterceptor(this._logger);

  final Logger _logger;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await SembastDB.getAuthToken();
    _logger.d('token: $token');
    options.headers['authorization'] = 'Bearer $token';
    _logger.i(options.baseUrl + options.path);
    super.onRequest(options, handler);
  }

  // @override
  // void onError(DioException err, ErrorInterceptorHandler handler) {
  //   _logger.e(err.response?.data ?? err);
  //   if (err.type == DioExceptionType.connectionTimeout) {
  //     CustomToastUtil.showToast(message: 'Connection Timed Out! Try again.');
  //   }
  //   super.onError(err, handler);
  // }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i(response.data);
    super.onResponse(response, handler);
  }
}
