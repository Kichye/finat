import 'package:finat/screens/options_screen.dart';
import 'package:finat/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:finat/models/item_menu.dart';
import 'package:finat/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static const String servicesRoute = 'serv';
  static const String optionsRoute = 'opr';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
        label: 'Home Screen',
        route: initialRoute,
        icon: Icons.house,
        screen: const HomeScreen()),
    ItemMenu(
        label: 'Services',
        route: servicesRoute,
        icon: Icons.text_fields,
        screen: const ServicesScreen()),
    ItemMenu(
        label: 'Services',
        route: optionsRoute,
        icon: Icons.text_fields,
        screen: const OptionsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }
    return appRoutes;
  }
}
