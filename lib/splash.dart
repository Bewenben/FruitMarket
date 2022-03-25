import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task1/intro/intro1.dart';
import 'package:task1/intro/intro3.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      File file = File("images/opened.txt");
      String seen = "0"; //file.readAsStringSync();
      //print(seen);
      if (seen == "0") {
        file.writeAsString("1");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Intro1()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Intro3()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff69a03a),
      body: Stack(
        children: [
          const Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Text(
              "Fruit Market",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            child: Image.asset(
              "images/fruits.png",
              height: 400,
              width: 100,
              fit: BoxFit.fill,
            ),
            bottom: -100,
            left: -150,
            right: -150,
          )
        ],
      ),
    );
  }
}
