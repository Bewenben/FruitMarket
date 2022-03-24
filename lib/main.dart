import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/finalpage.dart';
import 'package:task1/shoppingcartpage.dart';
import 'cardpage.dart';

void main() {
  runApp(const workshopapp());
}

class workshopapp extends StatelessWidget {
  const workshopapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'workshop app',
      home: shoppingcart(),
    );
  }
}
