import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 70,
        width: double.infinity,
        color: mPrimaryColor,
      ),
      Positioned(
        top: 25,
        child: Container(
          color: Colors.white,
          width: 500,
          height: 50,
        ),
      ),
      Positioned(
        left: 27,
        child: Material(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          elevation: 8.0,
          shadowColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              color: Colors.white,
              width: 340,
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
