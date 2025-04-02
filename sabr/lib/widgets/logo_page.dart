import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sabr/widgets/home_page.dart'; // Для таймера

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 100), // Длительность анимации
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    Timer(const Duration(seconds: 2), () {
      _animationController.forward().then((_) {
        // Переход на главный экран после завершения анимации
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (_, __, ___) => HomePage(),
            transitionsBuilder: (
              _,
              Animation<double> animation,
              __,
              Widget child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Image.asset('assets/deenly.png', width: 200, height: 200),
        ),
      ),
    );
  }
}
