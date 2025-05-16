import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/constants/app_texts.dart';
import 'features/astrologer/presentation/pages/splash_page.dart';

void main() {
  runApp(const ProviderScope(child: AstroSaggaApp()));
}

class AstroSaggaApp extends StatelessWidget {
  const AstroSaggaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: ThemeData(
        fontFamily: 'Helvetica',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}