
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/app_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() {
    emit(state + 1);
  }

  void decrement() => emit(state - 1);

  Color color(int count) {
    if (count % 2 == 0) {
      return c1;
    }
    if (count % 3 == 0) {
      return c2;
    }
    if (count % 5 == 0) {
      return c3;
    }
    if (count % 7 == 0) {
      return c4;
    }
    return c;
  }

  FaIcon faIcon(int count) {
    if (count % 2 == 0) {
      return i1;
    }
    if (count % 3 == 0) {
      return i2;
    }
    if (count % 5 == 0) {
      return i3;
    }
    if (count % 7 == 0) {
      return i4;
    }
    return i;
  }

  Color textColor(int count) {
    if (count % 5 == 0 && count % 3 != 0 && count % 2 != 0) {
      return Colors.black;
    }
    return Colors.white;
  }



  // bool temp;
  // Future<bool> isconnect() async {
  //   bool isConnected = await InternetConnectionChecker().hasConnection;
  //   if (isConnected == true) {
  //     temp = true;
  //     MyText("text");
  //   } else {
  //     temp = false;
  //   }
  //   print("isConnected");
  //   print(isConnected.toString().toUpperCase());
  //   print("temp");
  //   print(temp);
  //   return temp;
  // }
  // String mytext(){
    
  //   if (InternetConnectionChecker().hasConnection==true) {
  //     print("connecté");
  //     return "connecté";
  //   }else{
  //     print("déconnecté");
  //     return "déconnecté";
  //   }
  // }
  // Text MyText(String text){
  //   return Text(text,style: TextStyle(color: Colors.white),);
  // }

  // String counterURL(int counter){
  //   return baseurl+"$counter"+json;
  // }

  // Dio dio = Dio();
  // Future<Response<Map<String,dynamic>>> getNumberAPI(int count) async{
  //   String _url = counterURL(count);
  //   Future<Response<Map<String,dynamic>>> _response;
  //   try {
  //     _response = dio.get(_url);
  //   } on DioError catch (e) {
  //     print(e.message);
  //     throw Exception(e.message);
  //   }
  //   return _response;
  // }

  // Future<String> fromMap(int count) async{
  // Response response =await getNumberAPI(count);  
  // print(response);
  // Map<String,dynamic> jsonAPI = response.extra;
  // print(jsonAPI);
  // // NumberAPI numberAPI = NumberAPI(jsonAPI["text"], jsonAPI["number"], jsonAPI["found"], jsonAPI["type"]);
  // return jsonAPI["text"];
  // }

}
