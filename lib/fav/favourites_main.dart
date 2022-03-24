import 'package:flutter/material.dart';
import 'package:task1/fav/favourites.dart';
import '../constants/constant.dart';

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
      leadingWidth: 300,
      leading: const Center(
        child: Text(
          "Favourites",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
