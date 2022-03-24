import 'package:flutter/material.dart';

import '../../../constants/constant.dart';


class Detailgrape extends StatefulWidget {
  const Detailgrape({Key? key}) : super(key: key);

  @override
  State<Detailgrape> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<Detailgrape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 176,
                  child: Image.asset("assets/images/detail1.png",
                      fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("Grapes",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 51.5),
                  child: Row(
                    children: const [
                      Text(
                          "Grapes will provide natural nutrients. The  Chemical \nin organic grapes which can be healthier hair and \nskin. It can be improve Your heart health. Protect your\nbody from Cancer.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("Nutrition",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Fiber",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Potassium",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Fiber",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Iron",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Magnesium",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Vitamin C",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Vitamin K",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Zinc",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                  child: Row(
                    children: const [
                      Text("•  Phosphorous",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 54.0, left: 40.0),
                  child: Row(
                    children: [
                      const Text("\$ 160 Per/ kg",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins")),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: mPrimaryColor,
                            ),
                            child: SizedBox(
                              width: 115,
                              height: 35,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.0),
                                    child: Text('Buy Now',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      leadingWidth: 300,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SizedBox(
            height: 300,
            width: 300,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(
                            context);
                      });
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text("DETAILS",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins")),
                ),
              ],
            )),
      ),
    );
  }
}
