//import 'dart:js';

// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task1/login/page_1.dart';
import 'package:task1/login/page_5.dart';

class page_4 extends StatelessWidget {
  const page_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height4 = MediaQuery.of(context).size.height;
    double width4 = MediaQuery.of(context).size.width;

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const page_5()));
    });

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: height4*.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                radius: width4 * .25,
                animating: true,
                color: green,
              ),
              Padding(
                padding: EdgeInsets.only(top: height4*.1),
                child: const Text(
                  "Verifying Your Code..",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//   class page_4 extends State<page_4>{
//
//     double height4=MediaQuery.of(context).size.height;
//     double width4=MediaQuery.of(context).size.width;
//
//     Future.delayed(const Duration(milliseconds: 500), () {
//
//       return Scaffold(
//
//
//         body: Column(
//
//
//           crossAxisAlignment: CrossAxisAlignment.center ,
//
//           children: [
//
//             Padding(
//               padding: EdgeInsets.only(top: height4*0.2,left: width4*.2),
//               child: CupertinoActivityIndicator(
//                 radius: width4*.25,
//                 animating: false,
//                 color: green,
//
//               ),
//             )
//           ],
//         ),
//
//
//
//
//       );
//
//       setState(() {
//         // Here you can write your code for open new view
//       });
//
//     });
//
//
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
//
//
//
//
//
//