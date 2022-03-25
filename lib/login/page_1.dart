//import 'dart:html';

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task1/home/home.dart';
import 'page_2.dart';

const green = Color(0xff69a03a);
const gray = Color(0xffEFEFEF);

class page_1 extends StatefulWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SizedBox(
          width: width,
          height: height * .25,
          child: Image.asset("images/market_2.png"),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 15.0, bottom: 30),
        child: Text(
          "Fruit Market",
          style: TextStyle(
              color: green,
              fontWeight: FontWeight.bold,
              fontSize: 56,
              fontFamily: "Poppins,"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const page_2()));
          },
          child: Container(
            height: height * .1,
            width: width * .8,
            decoration: BoxDecoration(
              //color: green,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Click Here To Enter Your Mobile Number..",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            SizedBox(
                width: 100,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Divider(
                    height: 1,
                    thickness: 2,
                  ),
                )),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
                width: 100,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Divider(
                    height: 1,
                    thickness: 2,
                  ),
                ))
          ],
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            height: 70,
            width: width * .4,
            decoration: BoxDecoration(
              //color: green,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Bottomnavbar()));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/google.png",
                      height: 35,
                      width: 35,
                    ),
                    const Text("Log In With",
                        style: TextStyle(color: Colors.black, fontSize: 18))
                  ]),
            )),
        Container(
            height: 70,
            width: width * .4,
            decoration: BoxDecoration(
              //color: green,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Bottomnavbar()));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/facebook.png",
                      height: 35,
                      width: 35,
                    ),
                    const Text("Log In With",
                        style: TextStyle(color: Colors.black, fontSize: 18))
                  ]),
            ))
      ])
    ]));
  }
}
