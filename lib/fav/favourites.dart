// ignore_for_file: non_constant_identifier_names, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:task1/shop/shoppingcartpage.dart';
import '../constants/constants.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  double rating = 0.0;
  int count = 1;
  int i = 0;
  int mult = 0;

  void Increment(int count) {
    setState(() {
      count++;
      print(count.toString());
    });
  }

  void Decrement(int count) {
    setState(() {
      if (count >= 2) {
        count--;
        print(count.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
          itemCount: FavList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(FavList[index].imageURL))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FavList[index].name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "${FavList[index].mult.toString()} Per/Kg",
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                                width: 180,
                                child: Text(
                                  "Pick up from organic farms",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                  textAlign: TextAlign.start,
                                )),
                            SmoothStarRating(
                                allowHalfRating: false,
                                // onRated: (v) {
                                //   rating = v;
                                // },
                                starCount: 5,
                                rating: rating,
                                size: 30.0,
                                // isReadOnly:true,
                                filledIconData: Icons.blur_off,
                                halfFilledIconData: Icons.blur_on,
                                color: Colors.yellow,
                                borderColor: Colors.yellowAccent,
                                spacing: 0.0),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black87),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (FavList[index].count >= 2) {
                                            FavList[index].count--;
                                            FavList[index].mult =
                                                FavList[index].price *
                                                    FavList[index].count;
                                          }
                                        });
                                      },
                                      icon: const Icon(Icons.remove),
                                      iconSize: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                        "${FavList[index].count.toString()}"),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black87),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          FavList[index].count++;
                                          FavList[index].mult =
                                              FavList[index].price *
                                                  FavList[index].count;
                                        });
                                      },
                                      icon: const Icon(Icons.add),
                                      iconSize: 14,
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.only(left: 80),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const shoppingcart(); //  Before: MyOrders();
                                        }));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        elevation: 0,
                                      ),
                                      child: const Text(
                                        'Add',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            );
          }),
    ));
  }
}
