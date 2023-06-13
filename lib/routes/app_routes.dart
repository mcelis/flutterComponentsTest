import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuoptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_max_sharp,
        name: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview2_screen',
        icon: Icons.list_alt,
        name: "List View 2",
        screen: const Listview2Screen()),
    MenuOption(
        route: 'card_screen',
        icon: Icons.card_giftcard,
        name: "Card Screen",
        screen: const CardScreen()),
    MenuOption(
        route: 'alert_screen',
        icon: Icons.alarm,
        name: "Alert Screen",
        screen: const AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuoptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview2_screen': (BuildContext context) => const Listview2Screen(),
    'card_screen': (BuildContext context) => const CardScreen(),
    'alert_screen': (BuildContext context) => const AlertScreen()
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
