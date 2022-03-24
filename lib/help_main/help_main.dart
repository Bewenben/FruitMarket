import 'package:flutter/material.dart';
import 'package:task1/notifications/notifications_main.dart';

import '../constants/constant.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing"
          "and typesetting industry. Lorem Ipsum has been"
          "the industry’s standard dummy text ever since the"
          "1500s, when an unknown printer took a galley of"
          "type and scrambled it to make a type specimen"
          "book. It has survived not only five centuries, but"
          "also the leap into electronic typesetting, remaining"
          "essentially unchanged. It was popularised in the"
          "1960s with the release of Letraset sheets containing"
          "Lorem Ipsum passages, and more recently with"
          "desktop publishing software like Aldus PageMaker"
          "including versions of Lorem Ipsum."
          "Lorem Ipsum is simply dummy text of the printing"
          "and typesetting industry. Lorem Ipsum has been"
          "the industry’s standard dummy text ever since the"
          "1500s, when an unknown printer took a galley of"
          "type and scrambled it to make a type specimen"
          "book. It has survived not only five centuries, but"
          "also the leap into electronic typesetting, remaining"
          "essentially unchanged. It was popularised in the"
          "1960s with the release of Letraset sheets containing"
          "Lorem Ipsum passages, and more recently with"
          "desktop publishing software like Aldus PageMaker"
          "including versions of Lorem Ipsum.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text(
        "Help",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      leading: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return const NotificationScreen(); //temporarily goes back to my orders screen
                }));
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ],
      ),
    );
  }
}
