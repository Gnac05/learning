import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/routes/route.gr.dart';
import 'get_app_counter.dart' as di;

int number = 0;
var getIt = di.getIt;
final _flutterRoute = FlutterRoute();
void main() {
  WidgetsFlutterBinding();
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _flutterRoute.delegate(),
      routeInformationParser: _flutterRoute.defaultRouteParser(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Montserrat-Regular'),
    );
  }
}
