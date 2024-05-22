import 'package:dio/dio.dart';
import 'package:find_football/src/core/http/dio.dart';

class ApiService{
  Future<Response> get({required endPoint, dynamic data, dynamic params}) async {
    var response = await dio.get(endPoint, data: data, queryParameters: params);
    return response;
  }
  
  Future<Response> post({required endPoint, dynamic data, dynamic params}) async{
    var response = await dio.post(endPoint, data: data, queryParameters: params);
    return response;
  }
  
  Future<Response> put({required endPoint, dynamic data, dynamic params}) async {
    var response = await dio.put(endPoint, data: data, queryParameters: params);
    return response;
  }
  
  Future<Response> delete({required endPoint}) async {
    var response = await dio.delete(endPoint);
    return response;
  }
}