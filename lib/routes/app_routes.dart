import 'package:finat/screens/basic_list_view.dart';
import 'package:finat/screens/horizontal_listview_screen.dart';
import 'package:finat/screens/options_screen.dart';
import 'package:finat/screens/services_screen.dart';
import 'package:finat/screens/torneos_screen.dart';
import 'package:flutter/material.dart';
import 'package:finat/models/item_menu.dart';
import 'package:finat/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static const String servicesRoute = 'serv';
  static const String optionsRoute = 'opr';
  static const String tornRoute = 'tRo';
  static const String basicl = 'bl';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
        label: 'Home Screen', route: initialRoute, screen: const HomeScreen()),
    ItemMenu(
        label: 'Services',
        route: servicesRoute,
        screen: const ServicesScreen()),
    ItemMenu(
        label: 'perfil', route: optionsRoute, screen: const OptionsScreen()),
    ItemMenu(label: 'torneos', route: tornRoute, screen: const TorneoScreen()),
    ItemMenu(
        label: 'torneos', route: basicl, screen: const BasicListViewScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }
    return appRoutes;
  }
}
