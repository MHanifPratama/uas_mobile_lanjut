import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:uap_mobile_lanjut/screens/home.dart';
import 'package:uap_mobile_lanjut/models/models.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final appStateManager = AppStateManager();
  // await appStateManager.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: Icons.home, duration: 3000, nextScreen: MyHomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
