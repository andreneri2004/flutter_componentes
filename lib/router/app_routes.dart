import 'package:flutter/material.dart';

import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screen.dart';

class AppRoutes {

  static const initialRoute = 'homescreen';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'homescreen', name: 'Home', screen: const HomeScreen() , icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Lista comum', screen: const ListView1Screen() , icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Lista com separador', screen: const ListView2Screen() , icon: Icons.list_rounded),
    MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen() , icon: Icons.warning_amber),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen() , icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen() , icon: Icons.account_circle_outlined),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions){
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'homescreen': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const NoFound());
  }
}
