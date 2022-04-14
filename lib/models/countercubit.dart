
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/constants/app_constants.dart';
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

}