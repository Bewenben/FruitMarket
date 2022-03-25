// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:task1/constants/constantdata.dart';
import 'package:task1/shop/cardpage.dart';

class shoppingcart extends StatefulWidget {
  const shoppingcart({Key? key}) : super(key: key);

  @override
  _shoppingcartState createState() => _shoppingcartState();
}

class _shoppingcartState extends State<shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 350,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Center(
            child: Text(
              'Shopping Cart',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
        ),
        backgroundColor: mBackgroundcolor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.location_pin,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "440001 Nagpur,Maharashtra",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_downward,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Change Address",
                      style: TextStyle(fontSize: 14, color: Colors.lightBlue),
                    )),
              ),
            ]),
            SizedBox(
              height: 500,
              width: 1000,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 6,
                      thickness: 1,
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: foodinfos.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(foodinfos[index].pic)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                foodinfos[index].name,
                                style: const TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                foodinfos[index].prevprice,
                                style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                foodinfos[index].newprice,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 150, top: 20),
                              child: IconButton(
                                  onPressed: () {
                                    foodinfos.remove(foodinfos[index]);
                                  },
                                  icon: const Icon(
                                      Icons.restore_from_trash_outlined)),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                ButtonTheme(
                                    minWidth: 10,
                                    height: 35,
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          if (foodinfos[index].counts > 1) {
                                            foodinfos[index].counts--;
                                          }
                                        });
                                      },
                                      elevation: 0,
                                      color: Colors.white,
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.8),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("${foodinfos[index].counts}"),
                                const SizedBox(
                                  width: 5,
                                ),
                                ButtonTheme(
                                    minWidth: 10,
                                    height: 35,
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          foodinfos[index].counts++;
                                        });
                                      },
                                      elevation: 0,
                                      color: Colors.white,
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.8),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Total-",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "RS",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "${(foodinfos[0].price * foodinfos[0].counts) + (foodinfos[1].price * foodinfos[1].counts) + (foodinfos[2].price * foodinfos[2].counts)}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 140,
                ),
                ButtonTheme(
                    minWidth: 100,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const buyerdetails()));
                      },
                      elevation: 0,
                      color: mBackgroundcolor,
                      child: const Text(
                        "Place Order",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black.withOpacity(.2)),
                          borderRadius: BorderRadius.circular(5)),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
