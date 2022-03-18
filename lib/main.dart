import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/my_orders/my_orders_main.dart';


void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      home: MyOrders(),
    );
  }
}