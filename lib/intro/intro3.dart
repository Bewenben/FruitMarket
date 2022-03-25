import 'package:flutter/material.dart';

import 'package:task1/login/page_1.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 70),
          Image.asset(
            "images/page3.png",
            height: 300,
            width: 300,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 20),
          const Text(
            "Delivery Arrived",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Order is arrived at your Place",
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
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100),
                    border:
                        Border.all(color: const Color(0xff69A03A), width: 1)),
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
                  color: const Color(0xff69A03A),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const page_1()), (route) => false);
            },
            // This button removes all the previous pages from the stack and replace it with the next page
            // The next page will be the first page in the stack
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff69A03A)),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
//Color(0xff69A03A)