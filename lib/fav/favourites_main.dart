import 'package:flutter/material.dart';
import 'package:project01/constants/constant.dart';
import 'package:project01/fav/favourites.dart';
import 'package:project01/home/menupage.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  int selector = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: const [Favourites()],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text(
        "Favourites",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      leading: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return const Menupage(); //temporarily goes back to my orders screen
                }));
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ],
      ),
    );
  }
}
