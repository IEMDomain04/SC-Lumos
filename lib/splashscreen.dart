import 'package:flutter/material.dart';
import 'package:lumos/pages/homepage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
          seconds: 10), // Adjust the duration to slow down the animation
    )..forward();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.expand(
          child: Lottie.asset(
            'assets/Lumos.json',
            controller: _controller,
            fit: BoxFit.cover,
            onLoaded: (composition) {
              _controller.duration =
                  composition.duration * 1.5; // Slow down the animation
              _controller.forward();
            },
          ),
        ),
      ),
    );
  }
}
