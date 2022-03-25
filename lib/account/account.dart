import 'package:flutter/material.dart';
import 'package:task1/shop/shoppingcartpage.dart';
import '../fav/favourites_main.dart';
import '../help_main/help_main.dart';
import '../login/page_1.dart';
import '../orders/my_orders_main.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              color: const Color(0xff69a03a),
              child: Stack(
                children: [
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset("images/face.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "El Wad Sayed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Sayed_YA_Sayed@example.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                  const Positioned(
                    top: 80,
                    right: 20,
                    child: Icon(
                      Icons.note_alt,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyOrders()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_bag,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "My Orders",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FavouritesScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Favourites",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const shoppingcart()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "My Cart",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star_rate,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Rate us",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.share,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Share a Friend",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.help,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Help",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
              height: 0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const page_1()),
                    (route) => false);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.logout,
                      color: Color(0xff69a03a),
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(
                        color: Color(0xff69a03a),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
