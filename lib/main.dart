import 'package:flutter/material.dart';
import 'package:flutter_application_learn_get/core/routes/route.gr.dart';
import 'package:flutter_application_learn_get/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: 'Montserrat-Regular'),
          supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
    );
  }
}
