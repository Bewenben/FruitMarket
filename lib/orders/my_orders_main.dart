import 'package:flutter/material.dart';
import 'package:task1/constants/constant.dart';
import 'package:task1/orders/orders.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [const Orders()],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text(
        "My Orders",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      leading: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ],
      ),
    );
  }
}
