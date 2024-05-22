import 'package:dio/dio.dart';
import 'package:find_football/src/core/consts/api/api_constants.dart';
import 'package:find_football/src/core/http/dio_flutter_transformer.dart';
import 'package:find_football/src/core/services/flavor_service.dart';

import '../di/di.dart';

final options = BaseOptions(
  // baseUrl: di<FlavorService>().config.apiUrl,
  baseUrl: ApiConstants.BASE_URL,
  connectTimeout: const Duration(milliseconds: 240000),
  receiveTimeout: const Duration(milliseconds: 240000),
);

final dio = Dio(options)..transformer = FlutterTransformer();
