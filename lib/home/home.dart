import 'package:flutter/material.dart';
import 'package:fruitmarket2/account.dart';
import 'package:fruitmarket2/constants/constant.dart';
import 'package:fruitmarket2/fav/favourites_main.dart';
import 'package:fruitmarket2/home/menupage.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({Key? key}) : super(key: key);

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  final PageController _pageController = PageController();
  final List<Widget> _screens = [const Menupage(), const FavouritesScreen(), const Account(), const Account()];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onitemTapped(int selectedindex) {
    _pageController.jumpToPage(selectedindex);
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mPrimaryColor,
        unselectedItemColor: mSecondaryColor,
        backgroundColor: mBackgroundColor,
        currentIndex: _selectedIndex,
        onTap: _onitemTapped,
        items: [
          BottomNavigationBarItem(
            // activeIcon: Image.asset("assets/icons/home_selected.png"),
            icon: _selectedIndex == 0
                ? Image.asset('assets/icons/home_selected.png', width: 20)
                : Image.asset("assets/icons/home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // activeIcon: Image.asset("assets/icons/heart_selected.png"),
            icon: _selectedIndex == 1
                ? Image.asset('assets/icons/heart_selected.png', width: 20)
                : Image.asset("assets/icons/heart.png"),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Image.asset('assets/icons/cart_selected.png', width: 20)
                : Image.asset("assets/icons/cart.png"),
            label: 'Shopping Cart',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Image.asset('assets/icons/profile_selected.png', width: 20)
                : Image.asset("assets/icons/profile.png"),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
