import 'package:finat/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finat/models/glassmorphism.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  State<OptionsScreen> createState() => _OptionsScreen();
}

class _OptionsScreen extends State<OptionsScreen> {
  int home = 1;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Perfil'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
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