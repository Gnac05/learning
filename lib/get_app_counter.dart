import 'package:flutter_application_learn_get/models/countercubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance; 

void init(){
  // getIt.registerSingleton<AppCounter>(AppCounter());
  getIt.registerSingleton<CounterCubit>(CounterCubit());
  // getIt.registerSingleton<NumbercubitCubit>(NumbercubitCubit(apiRepository: ApiRepository(apiservice: Apiservice())));
  
}