import 'package:flutter/material.dart';
import 'package:project01/constants/constant.dart';
import 'package:project01/home/widgets/list.dart';
import 'package:project01/home/widgets/search.dart';
import 'package:project01/home/widgets/selectedcategory.dart';
import 'package:project01/notifications/notifications_main.dart';

class Menupage extends StatefulWidget {
  const Menupage({Key? key}) : super(key: key);

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SearchInput(),
            ListOptions(),
            SelectedCategory(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      leadingWidth: 300,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
            height: 300,
            width: 300,
            child: Row(
              children: const [
                Text("F",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
                Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text("ruit Market",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins")),
                ),
              ],
            )),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
