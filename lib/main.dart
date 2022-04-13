import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/cubit/numbercubit_cubit.dart';
import 'package:flutter_application_learn_get/models/countercubit.dart';
import 'package:flutter_application_learn_get/repository/api_repository.dart';
import 'package:flutter_application_learn_get/screens/myhomepage.dart';
import 'package:flutter_application_learn_get/service/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'get_app_counter.dart' as di;

int number = 0;
var getIt = di.getIt;
void main() {
  WidgetsFlutterBinding();
  di.init();
  runApp(MyApp(
    apiservice: Apiservice(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.apiservice}) : super(key: key);
  final Apiservice apiservice;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Montserrat-Regular'),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NumbercubitCubit(
                apiRepository: ApiRepository(apiservice: apiservice))
              ..getNumberApiCubit(number),
          ),
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
        ],
        child: MyHomePage()
      ),
    );
  }
}
