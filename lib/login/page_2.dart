//import 'dart:html';

// ignore_for_file: camel_case_types, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/login/page_1.dart';
import 'package:task1/login/page_3.dart';

import '../constants/keyboard.dart';

class page_2 extends StatefulWidget {
  const page_2({Key? key}) : super(key: key);

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  final txtctr = TextEditingController();

  final txtctr2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * .1, left: 48),
            child: Row(children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                width: width * .14,
                child: TextField(
                    onChanged: (value) {
                      if (value.length == 3) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    autofocus: true,
                    readOnly: true,
                    showCursor: true,
                    controller: txtctr,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), counterText: ''),
                    maxLength: 4,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  width: width * .6,
                  child: TextField(
                      readOnly: true,
                      showCursor: true,
                      controller: txtctr2,
                      maxLength: 4,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), counterText: ''),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                      ]),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: InkWell(
              onTap: () {
                if (txtctr.text != "" && txtctr2.text != "") {
                  showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                          title: const Text("Notice"),
                          content: Text("Your number is " +
                              txtctr.text +
                              txtctr2.text +
                              " Are you sure you want to proceed"),
                          actions: [
                            TextButton(
                                child: const Text("Yes"),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => page_3()));
                                }),
                            TextButton(
                                child: const Text("No"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                          title: const Text("Error"),
                          content: const Text(
                              "Your number is not correct, Please enter your number correctly."),
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
                height: height * .1,
                width: width * .8,
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
          SizedBox(
            height: height * .67,
            width: width * .81,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 30,
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
                        if (txtctr.text.length < 3) {
                          txtctr.text =
                              txtctr.text.substring(0, txtctr.text.length - 1);
                        } else if (txtctr2.text.isNotEmpty) {
                          txtctr2.text = txtctr2.text
                              .substring(0, txtctr2.text.length - 1);
                        } else {
                          txtctr.text =
                              txtctr.text.substring(0, txtctr.text.length - 1);
                        }
                      },
                      child: Container(
                        height: height * 0.18,
                        width: width * 0.25,
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
                        if (txtctr.text.isEmpty) {
                          txtctr.text += "+";
                        } else if (txtctr.text.length < 3) {
                          txtctr.text += "0";
                        } else {
                          txtctr2.text += "0";
                        }
                      },
                      child: Container(
                        height: height * 0.18,
                        width: width * 0.25,
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
                                    fontSize: 24, fontWeight: FontWeight.bold)),
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
                        if (txtctr.text != "" && txtctr2.text != "") {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text("Notice"),
                                  content: Text("Your number is " +
                                      txtctr.text +
                                      txtctr2.text +
                                      " Are you sure you want to proceed"),
                                  actions: [
                                    TextButton(
                                        child: const Text("Yes"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      page_3()));
                                        }),
                                    TextButton(
                                        child: const Text("No"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        })
                                  ],
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text("Error"),
                                  content: const Text(
                                      "Your number is not correct, Please enter your number correctly."),
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
                        height: height * 0.18,
                        width: width * 0.25,
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
                        if (txtctr.text.length < 3) {
                          txtctr.text += (index + 1).toString();
                        } else {
                          txtctr2.text += (index + 1).toString();
                        }
                      },
                      child: Container(
                        height: height * 0.18,
                        width: width * 0.25,
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
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            Text(list[index].word)
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}
