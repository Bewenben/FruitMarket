// ignore_for_file: camel_case_types, must_call_super

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task1/login/page_1.dart';
import 'package:task1/login/page_6.dart';

class page_5 extends StatefulWidget {
  const page_5({Key? key}) : super(key: key);

  @override
  State<page_5> createState() => _page_5State();
}

class _page_5State extends State<page_5> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const page_6()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height5 = MediaQuery.of(context).size.height;
    // double width5 = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Padding(
        padding: EdgeInsets.only(top: height5 * .3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline_rounded,
              size: 200,
              color: green,
            ),
            Padding(
              padding: EdgeInsets.only(top: height5 * .1),
              child: const Text(
                "Verification Successful",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
