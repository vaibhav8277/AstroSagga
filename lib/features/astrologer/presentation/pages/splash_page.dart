import 'dart:async';
import 'package:astro_sagga/core/constants/app_assets.dart';
import 'package:astro_sagga/core/constants/app_styles.dart';
import 'package:astro_sagga/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage()),
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
      backgroundColor: Colors.deepPurple[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                AppAssets.appLogo,
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(height: 20),
            FadeTransition(
              opacity: _scaleAnimation,
              child: Text(
                AppTexts.appTitle,
                style: AppStyles.white600Size20
              ),
            ),
          ],
        ),
      ),
    );
  }
}
