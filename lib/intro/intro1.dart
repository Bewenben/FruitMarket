

import 'package:flutter/material.dart';

import '../login/page_1.dart';
import 'intro2.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const page_1()));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text("Skip",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    )),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Image.asset(
            "images/page1.png",
            height: 300,
            width: 300,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 20),
          const Text(
            "E Shopping",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Explore top organic fruits & grab them",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: const Color(0xff69A03A),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100),
                    border:
                        Border.all(color: const Color(0xff69A03A), width: 1)),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100),
                    border:
                        Border.all(color: const Color(0xff69A03A), width: 1)),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Intro2()));
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff69A03A)),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            child: const Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
//Color(0xff69A03A)