import 'package:dio/dio.dart';
import 'package:flutter_application_learn_get/core/api_constants.dart';

class Apiservice{
   Dio dio =Dio();
  Apiservice(){
    dio=Dio();
  }
  // Future<Response<Map<String, dynamic>>?> getNumberData() async{
  //     try {
  //       final Response<Map<String,dynamic>> response = await dio.get(url);
  //       print("RESPONSE : $response");
  //       return response;
  //     } catch (e) {
  //       print("Error : $e");
  //     }
  //     return null;
  // }

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