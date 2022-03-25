

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task1/home/home.dart';
import 'package:task1/login/page_1.dart';

class page_6 extends StatelessWidget {
  const page_6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height5 = MediaQuery.of(context).size.height;
    double width5 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height5 * 0.1,
                  left: width5 * 0.04,
                  right: width5 * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height5 * .03),
                    child: const Text(
                      "Enter your name",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: height5 * .03, top: height5 * .03),
                    child: const Text(
                      "Add Address",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height5 * 0.05),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const Bottomnavbar()));
                      },
                      child: Container(
                        height: height5 * .08,
                        width: width5 * .9,
                        decoration: BoxDecoration(
                          color: green,
                          border: Border.all(color: Colors.green),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Center(
                            child: Text(
                          "Verify",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
