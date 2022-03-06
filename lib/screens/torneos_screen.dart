import 'package:finat/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TorneoScreen extends StatefulWidget {
  const TorneoScreen({Key? key}) : super(key: key);

  @override
  State<TorneoScreen> createState() => _TorneoScreen();
}

class _TorneoScreen extends State<TorneoScreen> {
  int home = 1;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Torneos'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: home,
          onTap: (index) {
            setState(() {
              if (home == index) {
                Navigator.pushReplacementNamed(context, AppRoutes.optionsRoute);
              } else {
                Navigator.pushReplacementNamed(context, AppRoutes.initialRoute);
              }
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil")
          ],
        ));
  }
}
