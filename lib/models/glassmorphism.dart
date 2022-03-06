import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;

  const GlassMorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(opacity),
          borderRadius: const BorderRadius.all(
            Radius.circular(0),
          ),
          border: Border.all(
            width: 1.5,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: child,
      ),
    );
    // ClipRRect(
    //   borderRadius: BorderRadius.circular(20),
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),

    //   ),
  }
}
