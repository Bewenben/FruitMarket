import 'package:flutter/material.dart';
import 'package:task1/constants/constant.dart';
import 'package:task1/fav/favourites_main.dart';
import 'package:task1/notifications/notifications_today.dart';
import 'package:task1/notifications/notifications_yesterday.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 20),
              ),
            ),
            NotificationsToday(),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 20),
              ),
            ),
            NotificationsYesterday()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text(
        "Notifications",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      leading: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return const FavouritesScreen(); //temporarily goes back to my orders screen
                }));
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ],
      ),
    );
  }
}
