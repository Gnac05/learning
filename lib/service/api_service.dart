import 'package:dio/dio.dart';
import 'package:flutter_application_learn_get/core/constants/api_constants.dart';

class Apiservice{
   Dio dio =Dio();
  Apiservice(){
    dio=Dio();
  }

  Future<Response<Map<String, dynamic>>> getNumberDataService(int number) async {

    Future<Response<Map<String, dynamic>>> _response;
    try {
      String url = "${baseurl}${number}$json";
      _response =  dio.get(url);
      print("${baseurl}${number}$json");
      print(await _response);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return _response;
  }

  getNumberData(int number) {}
}