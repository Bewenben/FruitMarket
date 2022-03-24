import 'package:flutter/material.dart';
import 'package:task1/home/home.dart';

import '../../constants/category.dart';
import '../../constants/constant.dart';


int currentSelect = 1;

class ListOptions extends StatefulWidget {
  const ListOptions({Key? key}) : super(key: key);

  @override
  State<ListOptions> createState() => _ListOptionsState();
}

class _ListOptionsState extends State<ListOptions> {
  Color colorSelect = const Color.fromRGBO(204, 125, 0, 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryname.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentSelect = index;
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const Bottomnavbar(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 33.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 90,
                        color:
                            currentSelect == index ? colorSelect : Colors.white,
                        child: Center(
                          child: Text(
                            categoryname[index].category,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: currentSelect == index
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                              color: currentSelect == index
                                  ? Colors.white
                                  : mSecondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
