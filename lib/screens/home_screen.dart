import 'package:finat/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:finat/models/glassmorphism.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isBlur = false;
  int home = 0;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Bienvenido'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GlassMorphism(
                blur: _isBlur ? 20 : 0,
                opacity: 0.2,
                child: const SizedBox(
                  child: Center(
                    child: Text('Services'),
                  ),
                  height: 150,
                  width: 300,
                ),
              ),
              GlassMorphism(
                blur: _isBlur ? 20 : 0,
                opacity: 0.2,
                child: const SizedBox(
                  child: Center(
                    child: Text('Services'),
                  ),
                  height: 150,
                  width: 300,
                ),
              ),
              GlassMorphism(
                  blur: _isBlur ? 20 : 0,
                  opacity: 0.2,
                  child: const SizedBox(
                    child: Center(
                      child: Text('Services'),
                    ),
                    height: 150,
                    width: 300,
                  ))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: home,
          onTap: (index) {
            setState(() {
              if (home == index) {
                Navigator.pushReplacementNamed(context, AppRoutes.initialRoute);
              } else {
                Navigator.pushReplacementNamed(context, AppRoutes.optionsRoute);
              }
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Options")
          ],
        ));
  }
}
