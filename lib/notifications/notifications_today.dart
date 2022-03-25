import 'package:flutter/material.dart';
import '../constants/constants.dart';

class NotificationsToday extends StatelessWidget {
  const NotificationsToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 480,
        width: 410,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: TodayList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(TodayList[index].imageURL))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        TodayList[index].name,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.start,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.more_vert_rounded))
                                    ],
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    width: 180,
                                    child: Text(
                                      TodayList[index].description,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                      textAlign: TextAlign.start,
                                    )),
                                Text(
                                  TodayList[index].time,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.start,
                                ),
                              ]),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              }),
        ));
  }
}
