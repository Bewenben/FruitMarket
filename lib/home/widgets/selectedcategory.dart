import 'package:flutter/material.dart';
import 'package:project01/home/widgets/Dry%20Fruits/dehiscentfruits.dart';
import 'package:project01/home/widgets/Dry%20Fruits/indehiscentfruit.dart';
import 'package:project01/home/widgets/Dry%20Fruits/kashmiri.dart';
import 'package:project01/home/widgets/Dry%20Fruits/mixeddryfruits.dart';
import 'package:project01/home/widgets/Fruits/melonfruits.dart';
import 'package:project01/home/widgets/Fruits/mixedfruits.dart';
import 'package:project01/home/widgets/Fruits/organicfruit.dart';
import 'package:project01/home/widgets/Fruits/stonefruits.dart';
import 'package:project01/home/widgets/Vegetables/alliumvegetables.dart';
import 'package:project01/home/widgets/Vegetables/mixedvegetables.dart';
import 'package:project01/home/widgets/Vegetables/rootvegetables.dart';
import 'package:project01/home/widgets/list.dart';
import 'Vegetables/organicvegetables.dart';

class SelectedCategory extends StatefulWidget {
  const SelectedCategory({Key? key}) : super(key: key);

  @override
  State<SelectedCategory> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {
  @override
  void setState(VoidCallback fn) {
    currentSelect;
  }

  @override
  Widget build(BuildContext context) {
    if (currentSelect == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

        children: const [
          Organicvegetables(),
          Mixedvegetables(),
          Alliumvegetables(),
          Rootvegetables()
        ],
      );
    } else if (currentSelect == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

        children: const [
          Organicfruits(),
          Mixedfruits(),
          Stonefruits(),
          Melonfruits()
        ],
      );
    } else if (currentSelect == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,

        children: const [
          Indehiscentfruit(),
          Mixeddryfruits(),
          Dehiscentfruits(),
          Kashmiri()
        ],
      );
    } else {
      throw ("ERROR");
    }
  }
}
