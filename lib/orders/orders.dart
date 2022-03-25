import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../constants/constant.dart';


class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    double rating = 0.0;

    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
          itemCount: OrdersList.length,
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
                              image: AssetImage(OrdersList[index].imageURL))),
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
                                    OrdersList[index].name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.start,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                      },
                                      icon: const Icon(Icons.navigate_next_rounded))
                                ],
                              ),
                            ),
                            SmoothStarRating(
                                allowHalfRating: false,
                                // onRated: (v) {
                                //   rating = v;
                                // },
                                starCount: 5,
                                rating: rating,
                                size: 35.0,
                                // isReadOnly: true,
                                filledIconData: Icons.blur_off,
                                halfFilledIconData: Icons.blur_on,
                                color: Colors.grey,
                                borderColor: Colors.grey,
                                spacing: 0.0),
                            Container(
                                padding: const EdgeInsets.only(top: 10),
                                width: 180,
                                child: const Text(
                                  "Rate This Product",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                  textAlign: TextAlign.start,
                                )),
                            const Text(
                              "Delivered on 24th of December",
                              style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
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
