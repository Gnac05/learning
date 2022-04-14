import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/cubit/numbercubit_cubit.dart';
import 'package:flutter_application_learn_get/main.dart';
import 'package:flutter_application_learn_get/models/countercubit.dart';
import 'package:flutter_application_learn_get/repository/api_repository.dart';
import 'package:flutter_application_learn_get/screens/mylearnpage.dart';
import 'package:flutter_application_learn_get/service/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NumbercubitCubit(
                apiRepository: ApiRepository(apiservice: Apiservice()))
              ..getNumberApiCubit(number),
          ),
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
        ],
        child: MyLearnPage());
  }
}
