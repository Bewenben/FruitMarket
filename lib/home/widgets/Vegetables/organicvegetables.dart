import 'package:flutter/material.dart';
import 'package:task1/home/widgets/details/details2.dart';

import '../../../constants/constant.dart';
import '../../../constants/vegetables.dart';

class Organicvegetables extends StatefulWidget {
  const Organicvegetables({Key? key}) : super(key: key);

  @override
  State<Organicvegetables> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<Organicvegetables> {
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
              const Text("Organic Vegetables",
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
            children: const [
              Text("Pick up from the organic farms",
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
              itemCount: gridorganicvegetables.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 20.0,
                    ),
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
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (gridorganicvegetables[index]
                                                      .image ==
                                                  gridorganicvegetables[0]
                                                      .image) {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Detailbroccoli()));
                                              }
                                            });
                                          },
                                          splashColor:
                                              Colors.brown.withOpacity(0.5),
                                          child: Container(
                                            height: 148,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    gridorganicvegetables[index]
                                                        .image),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
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
                                                        if (gridorganicvegetables[
                                                                    index]
                                                                .trigger ==
                                                            false) {
                                                          gridorganicvegetables[
                                                                      index]
                                                                  .trigger =
                                                              !gridorganicvegetables[
                                                                      index]
                                                                  .trigger;
                                                          favIconColor =
                                                              favoriteselected;
                                                          favIcon =
                                                              Icons.favorite;
                                                        } else if (gridorganicvegetables[
                                                                    index]
                                                                .trigger ==
                                                            true) {
                                                          gridorganicvegetables[
                                                                      index]
                                                                  .trigger =
                                                              !gridorganicvegetables[
                                                                      index]
                                                                  .trigger;
                                                        }
                                                      });
                                                    },
                                                    icon: gridorganicvegetables[
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
                                        gridorganicvegetables[index].stars)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text(gridorganicvegetables[index].name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins")),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, right: 24.0),
                                child: Text(gridorganicvegetables[index].value,
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
