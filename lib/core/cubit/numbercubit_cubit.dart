import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/models/failure_model.dart';
import 'package:flutter_application_learn_get/models/numberAPI.dart';
import 'package:flutter_application_learn_get/repository/api_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'numbercubit_state.dart';

class NumbercubitCubit extends Cubit<NumbercubitState> {
  final ApiRepository apiRepository;
  NumbercubitCubit({required this.apiRepository}) : super(NumbercubitInitial());
  // void numberChange(){emit(state);}
  Future<void> getNumberApiCubit(int number) async {
    emit(NumbercubitLoading());
    try {
      final NumberAPI? numbersAPI =
          await apiRepository.getNumberDataRepository(number);
      emit(NumbercubitLoaded(numbersAPI: numbersAPI!));
    } on Failure catch (er) {
      emit(NumbercubitError(failure: er));
    } catch (e) {
      print("Error : $e");
    }
  }

  bool isconnected = false;
  bool isconnect() {
    // ignore: unused_local_variable
    final StreamSubscription<InternetConnectionStatus> listener =
        InternetConnectionChecker().onStatusChange.listen((event) {
      switch (event) {
        case InternetConnectionStatus.connected:
          isconnected = true;
          print("Data connection is available");
          print(isconnected);
          break;
        case InternetConnectionStatus.disconnected:
          print("You are disconnected from the internet.");
          isconnected = false;
          print(isconnected);
          break;
      }
    });
    return isconnected;
  }

  // final GlobalKey<ScaffoldState> sb = GlobalKey<ScaffoldState>();
  // void showMeSnackBar(String text) {
  //   // ignore: deprecated_member_use
  //   sb.currentState?.showSnackBar(SnackBar(
  //     content: Text(text),
  //     backgroundColor: Colors.black,
  //     duration: Duration(seconds: 1),
  //     elevation: 1,
  //   ));
  void showMeSnackBarDeconnection(BuildContext context, bool isconnected) {
    if (!isconnected) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("No Connection!! Turn your Data.",style: TextStyle(fontSize: 15,fontFamily: 'Montserrat-Regular'),),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 1),
      elevation: 0,
      dismissDirection: DismissDirection.up,
    ));
    }
  }
  // }

}
