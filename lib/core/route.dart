import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_learn_get/screens/a_propos_page.dart';
import 'package:flutter_application_learn_get/screens/configue_page.dart';
import 'package:flutter_application_learn_get/screens/myhomepage.dart';
import 'package:flutter_application_learn_get/screens/settingpage.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: MyHomePage, initial: true),
  AutoRoute(page: SettingPage),
  AutoRoute(page: ConfiguePage),
  AutoRoute(page: AProposPage)
])
class $FlutterRoute{}
