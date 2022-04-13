// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_application_learn_get/models/countercubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class Helper extends Bloc<Event , State> {
//   Helper(State<StatefulWidget> initialState) : super(initialState);

//   Future<void> fromMap(int count) async{
//   Response<Map<String,dynamic>> response =await CounterCubit().getNumberAPI(count);  
//   Map<String,dynamic> jsonAPI = response.extra;
//   // NumberAPI numberAPI = NumberAPI(jsonAPI["text"], jsonAPI["number"], jsonAPI["found"], jsonAPI["type"]);
//   return jsonAPI["text"];
//   }
// }