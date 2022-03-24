
import 'package:flutter/material.dart';
import 'package:task1/splash.dart';

void main() {
  runApp(const workshopapp());
}

class workshopapp extends StatelessWidget {
  const workshopapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
      title: 'Fruit Market',
      home: Splash(),
    );
  }
}
