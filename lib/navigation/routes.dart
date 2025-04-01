import 'dart:core';
import 'package:flutter/material.dart';
import 'package:new_super_jumper/main.dart';
import 'package:new_super_jumper/ui/leaderboards_screen.dart';
import 'package:new_super_jumper/ui/main_menu_screen.dart';
import 'package:new_super_jumper/ui/character_list.dart'; // 🔥 Import Character List Screen

enum Routes {
  main('/'),
  game('/game'),
  leaderboard('/leaderboard'),
  characters('/characters'); // 🔥 Added Characters Route

  final String route;

  const Routes(this.route);

  static Route routes(RouteSettings settings) {
    MaterialPageRoute buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    final routeName =
        Routes.values.firstWhere((e) => e.route == settings.name);

    switch (routeName) {
      case Routes.main:
        return buildRoute(const MainMenuScreen());
      case Routes.game:
        return buildRoute(const MyGameWidget());
      case Routes.leaderboard:
        return buildRoute(const LeaderboardScreen());
      case Routes.characters: // 🔥 Added Case for Characters Screen
        return buildRoute(const CharacterListScreen());
      default:
        throw Exception('Route does not exist');
    }
  }
}

extension BuildContextExtension on BuildContext {
  void pushAndRemoveUntil(Routes route) {
    Navigator.pushNamedAndRemoveUntil(this, route.route, (route) => false);
  }

  void push(Routes route) {
    Navigator.pushNamed(this, route.route);
  }
}
