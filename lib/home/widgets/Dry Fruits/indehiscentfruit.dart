import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../constants/dryfruits.dart';

class Indehiscentfruit extends StatefulWidget {
  const Indehiscentfruit({Key? key}) : super(key: key);

  @override
  State<Indehiscentfruit> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<Indehiscentfruit> {
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
              const Text("Indehiscent Fruits",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins")),
              Text("   (%20 off)",
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Pick up from the indehiscent farms",
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
              itemCount: gridindehiscentdryfruit.length,
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
                                            gridindehiscentdryfruit[index]
                                                .image,
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
                                                        if (gridindehiscentdryfruit[
                                                                    index]
                                                                .trigger ==
                                                            false) {
                                                          gridindehiscentdryfruit[
                                                                      index]
                                                                  .trigger =
                                                              !gridindehiscentdryfruit[
                                                                      index]
                                                                  .trigger;
                                                          favIconColor =
                                                              favoriteselected;
                                                          favIcon =
                                                              Icons.favorite;
                                                        } else if (gridindehiscentdryfruit[
                                                                    index]
                                                                .trigger ==
                                                            true) {
                                                          gridindehiscentdryfruit[
                                                                      index]
                                                                  .trigger =
                                                              !gridindehiscentdryfruit[
                                                                      index]
                                                                  .trigger;
                                                        }
                                                      });
                                                    },
                                                    icon: gridindehiscentdryfruit[
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
                                        gridindehiscentdryfruit[index].stars)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(gridindehiscentdryfruit[index].name,
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
                                child: Text(
                                    gridindehiscentdryfruit[index].value,
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
