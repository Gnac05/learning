import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/models/failure_model.dart';
import 'package:flutter_application_learn_get/models/numberAPI.dart';
import 'package:flutter_application_learn_get/repository/api_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:translator/translator.dart';

part 'numbercubit_state.dart';

class NumbercubitCubit extends Cubit<NumbercubitState> {
  final ApiRepository apiRepository;
  NumbercubitCubit({required this.apiRepository}) : super(NumbercubitInitial());

  Future<void> getNumberApiCubit(int number,BuildContext context) async {
    emit(NumbercubitLoading());
    try {
      final NumberAPI? numbersAPI =
          await apiRepository.getNumberDataRepository(number);
      GoogleTranslator translator = GoogleTranslator();
   await translator.translate(numbersAPI!.text, to: AppLocalizations.of(context)!.codeISO2).then((value) async {
      print(value.text);
       numbersAPI.text = await value.text;
    });    
      emit(NumbercubitLoaded(numbersAPI: numbersAPI));
    } on Failure catch (er) {
      emit(NumbercubitError(failure: er));
    } catch (e) {
      print("Error : $e");
    }
  }

  // void google_tranduction(String text, String code) {
  //   GoogleTranslator translator = GoogleTranslator();
  //   translator.translate(text, to: code).then((value) async {
  //     print(value.text);
  //      value.text;
  //   });
  // }

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

}
