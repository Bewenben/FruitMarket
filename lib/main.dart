import 'package:flutter/material.dart';
import 'package:fruit_market/splash.dart';
import 'package:flutter/cupertino.dart';

import 'account.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      title: "Fruit Market",
    );
  }
}
