// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../screens/a_propos_page.dart' as _i3;
import '../../screens/myhomepage.dart' as _i1;
import '../../screens/settingpage.dart' as _i2;

class FlutterRoute extends _i4.RootStackRouter {
  FlutterRoute([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomePage());
    },
    SettingRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SettingPage());
    },
    AProposRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AProposPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MyHomeRoute.name, path: '/'),
        _i4.RouteConfig(SettingRoute.name, path: '/setting-page'),
        _i4.RouteConfig(AProposRoute.name, path: '/a-propos-page')
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i4.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.SettingPage]
class SettingRoute extends _i4.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting-page');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i3.AProposPage]
class AProposRoute extends _i4.PageRouteInfo<void> {
  const AProposRoute() : super(AProposRoute.name, path: '/a-propos-page');

  static const String name = 'AProposRoute';
}
