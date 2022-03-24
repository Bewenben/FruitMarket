import 'package:flutter/material.dart';
import 'package:task1/home/widgets/Vegetables/alliumvegetables.dart';
import 'package:task1/home/widgets/Vegetables/mixedvegetables.dart';
import 'package:task1/home/widgets/list.dart';
import 'Dry Fruits/dehiscentfruits.dart';
import 'Dry Fruits/indehiscentfruit.dart';
import 'Dry Fruits/kashmiri.dart';
import 'Dry Fruits/mixeddryfruits.dart';
import 'Fruits/melonfruits.dart';
import 'Fruits/mixedfruits.dart';
import 'Fruits/organicfruit.dart';
import 'Fruits/stonefruits.dart';
import 'Vegetables/organicvegetables.dart';
import 'Vegetables/rootvegetables.dart';

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
