// ignore_for_file: camel_case_types, unrelated_type_equality_checks, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:task1/constants/keyboard.dart';
import 'package:task1/login/page_1.dart';
import 'package:task1/login/page_4.dart';

class page_3 extends StatelessWidget {
  page_3({Key? key}) : super(key: key);

  final txt1 = TextEditingController();
  final txt2 = TextEditingController();
  final txt3 = TextEditingController();
  final txt4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height2 = MediaQuery.of(context).size.height;
    double width2 = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
          const Text(
            "Enter the 4 digit code that was sent \n to your mobile number",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: height2 * .1,
                  width: width2 * .15,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: txt1,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: height2 * .1,
                  width: width2 * .15,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: txt2,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: height2 * .1,
                  width: width2 * .15,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: txt3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: height2 * .1,
                  width: width2 * .15,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: txt4,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () {
                if (txt1 != "" && txt2 != "" && txt3 != "" && txt4 != "") {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const page_4()));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                          title: const Text("Error"),
                          content: const Text(
                              "Your verification code is not correct, Please enter your verificaiton code correctly."),
                          actions: [
                            TextButton(
                                child: const Text("Ok"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                }
              },
              child: Container(
                height: height2 * .1,
                width: width2 * .8,
                decoration: BoxDecoration(
                  color: green,
                  border: Border.all(color: Colors.green),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                    child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height2 * 0.0),
            child: SizedBox(
              height: height2 * .6,
              width: width2 * .81,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 40,
                children: List.generate(list.length, (index) {
                  if (index == 9) {
                    //DELETE BUTTON
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          if (txt2.text.isEmpty) {
                            txt1.text =
                                txt1.text.substring(0, txt1.text.length - 1);
                          } else if (txt3.text.isEmpty) {
                            txt2.text =
                                txt2.text.substring(0, txt2.text.length - 1);
                          } else if (txt4.text.isEmpty) {
                            txt3.text =
                                txt3.text.substring(0, txt3.text.length - 1);
                          } else if (txt4.text.isNotEmpty) {
                            txt4.text =
                                txt4.text.substring(0, txt4.text.length - 1);
                          }
                        },
                        child: Container(
                          height: height2 * 0.1,
                          width: width2 * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 18.0, right: 2),
                                child: Icon(
                                  Icons.backspace,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  } else if (index == 10) {
                    return Card(
                      elevation: 1,
                      color: gray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          if (txt1.text.isEmpty) {
                            txt1.text += "0";
                          } else if (txt2.text.isEmpty) {
                            txt2.text += "0";
                          } else if (txt3.text.isEmpty) {
                            txt3.text += "0";
                          } else if (txt4.text.isEmpty) {
                            txt4.text += "0";
                          } else {}
                        },
                        child: Container(
                          height: height2 * 0.1,
                          width: width2 * 0.25,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(list[index].number,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              Text(list[index].word)
                            ],
                          ),
                        ),
                      ),
                    );
                  } else if (index == 11) {
                    //OK BUTTON
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          if (txt1 != "" &&
                              txt2 != "" &&
                              txt3 != "" &&
                              txt4 != "") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const page_4()));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext) {
                                  return AlertDialog(
                                    title: const Text("Error"),
                                    content: const Text(
                                        "Your verification code is not correct, Please enter your verificaiton code correctly."),
                                    actions: [
                                      TextButton(
                                          child: const Text("Ok"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          })
                                    ],
                                  );
                                });
                          }
                        },
                        child: Container(
                          height: height2 * 0.1,
                          width: width2 * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(list[index].number,
                                  style: const TextStyle(fontSize: 32))
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    //NUMPAD
                    return Card(
                      elevation: 1,
                      color: gray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          if (txt1.text.isEmpty) {
                            txt1.text += (index + 1).toString();
                          } else if (txt2.text.isEmpty) {
                            txt2.text += (index + 1).toString();
                          } else if (txt3.text.isEmpty) {
                            txt3.text += (index + 1).toString();
                          } else if (txt4.text.isEmpty) {
                            txt4.text += (index + 1).toString();
                          } else {}
                        },
                        child: Container(
                          height: height2 * 0.1,
                          width: width2 * 0.25,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(list[index].number,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              Text(list[index].word)
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
