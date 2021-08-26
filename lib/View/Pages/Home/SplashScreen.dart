import 'dart:async';
import 'package:blunch/View/Pages/Location/Select_Location.dart';
import 'package:flutter/material.dart';

class SplashSceen extends StatefulWidget {
  @override
  _SplashSceenState createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    // Navigate to Location Screen
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LocationScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7B0304),
      body: Center(child: Image.asset("assets/logo.png")),
    );
  }
}
