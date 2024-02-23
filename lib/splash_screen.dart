import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_statefulwidget/tab_menu.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
  
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const TabMenu()));
    });
  }
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.asset('assets/images/Dart.jpg')
        ),
      );
    }
  }




