import 'package:flutter_application_learn_get/models/countercubit.dart';
import 'package:get_it/get_it.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:intl/locale.dart';

GetIt getIt = GetIt.instance; 

void init(){
  // getIt.registerSingleton<AppCounter>(AppCounter());
  getIt.registerSingleton<CounterCubit>(CounterCubit());
  // getIt.registerSingleton<AppLocalizations>(AppLocalizations()));
  // getIt.registerSingleton<NumbercubitCubit>(NumbercubitCubit(apiRepository: ApiRepository(apiservice: Apiservice())));
  
}