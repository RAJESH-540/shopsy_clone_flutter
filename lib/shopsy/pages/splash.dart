import 'dart:async';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
     Timer(Duration(seconds: 3), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const  HomeScreen()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Image.asset("assets/images/Shopsy_logo.png")
      ),
    );
  }
}
