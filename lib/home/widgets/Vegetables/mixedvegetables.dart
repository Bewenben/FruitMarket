import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../constants/vegetables.dart';

class Mixedvegetables extends StatefulWidget {
  const Mixedvegetables({Key? key}) : super(key: key);

  @override
  State<Mixedvegetables> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<Mixedvegetables> {
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
              const Text("Mixed Vegetables",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins")),
              Text("   (%10 off)",
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
              Text("Vegetable mixed fresh pack",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins")),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gridmixedvegetables.length,
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
                                            gridmixedvegetables[index].image,
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
                                                        if (gridmixedvegetables[
                                                                    index]
                                                                .trigger ==
                                                            false) {
                                                          gridmixedvegetables[
                                                                      index]
                                                                  .trigger =
                                                              !gridmixedvegetables[
                                                                      index]
                                                                  .trigger;
                                                          favIconColor =
                                                              favoriteselected;
                                                          favIcon =
                                                              Icons.favorite;
                                                        } else if (gridmixedvegetables[
                                                                    index]
                                                                .trigger ==
                                                            true) {
                                                          gridmixedvegetables[
                                                                      index]
                                                                  .trigger =
                                                              !gridmixedvegetables[
                                                                      index]
                                                                  .trigger;
                                                        }
                                                      });
                                                    },
                                                    icon: gridmixedvegetables[
                                                                    index]
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
                                        gridmixedvegetables[index].stars)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  width: 120,
                                  child: Text(gridmixedvegetables[index].name,
                                      maxLines: 2,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Poppins")),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, right: 24.0),
                                child: Text(gridmixedvegetables[index].value,
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
