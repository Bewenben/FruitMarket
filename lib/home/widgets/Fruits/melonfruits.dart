import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../constants/fruits.dart';

class Melonfruits extends StatefulWidget {
  const Melonfruits({Key? key}) : super(key: key);

  @override
  State<Melonfruits> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<Melonfruits> {
  Color favIconColor = favoriteoutline;
  bool isFavorite = false;
  int loveselect = 0;
  var favIcon = Icons.favorite_border_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20),
          child: Row(
            children: [
              const Text("Melon Fruits",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins")),
              Text("   (%5 off)",
                  style: TextStyle(
                      color: mPrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20),
          child: Row(
            children: const [
              Text("Fresh Melon fruits",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins")),
            ],
          ),
        ),
        SizedBox(
          height: 225,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gridmelonfruits.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                    child: SizedBox(
                      height: 225,
                      width: 125,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: 118,
                                          height: 143,
                                          child: Image.asset(
                                            gridmelonfruits[index].image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (gridmelonfruits[
                                                                    index]
                                                                .trigger ==
                                                            false) {
                                                          gridmelonfruits[index]
                                                                  .trigger =
                                                              !gridmelonfruits[
                                                                      index]
                                                                  .trigger;
                                                          favIconColor =
                                                              favoriteselected;
                                                          favIcon =
                                                              Icons.favorite;
                                                        } else if (gridmelonfruits[
                                                                    index]
                                                                .trigger ==
                                                            true) {
                                                          gridmelonfruits[index]
                                                                  .trigger =
                                                              !gridmelonfruits[
                                                                      index]
                                                                  .trigger;
                                                        }
                                                      });
                                                    },
                                                    icon: gridmelonfruits[index]
                                                                .trigger ==
                                                            true
                                                        ? Icon(Icons.favorite,
                                                            color:
                                                                favoriteselected)
                                                        : Icon(
                                                            Icons
                                                                .favorite_border_outlined,
                                                            color:
                                                                favoriteoutline,
                                                          ))),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 33.0, top: 8.0),
                                child: SizedBox(
                                    height: 10,
                                    child: Image.asset(
                                        gridmelonfruits[index].stars)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(gridmelonfruits[index].name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins")),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, right: 24.0),
                                child: Text(gridmelonfruits[index].value,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins")),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ],
    );
  }
}
