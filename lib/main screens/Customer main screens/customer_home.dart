
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_badged/badge_position.dart';
import 'package:flutter_badged/badge_positioned.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:nike_store/main%20screens/Customer%20main%20screens/Explore_page.dart';
import 'package:nike_store/main%20screens/Customer%20main%20screens/favourite_screen.dart';
import '../../constants.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  final _advancedDrawerController = AdvancedDrawerController();
  int _currentIndex=0;
  List _mainscreens = [
      ExploreScreen(),
    FavouriteScreen(),
      Center(child: Text('mike'),),
      Center(child: Text('mike'),),

  ];
  @override
  Widget build(BuildContext context) {

    void _handleMenuButtonPressed() {
      // NOTICE: Manage Advanced Drawer state through the Controller.
      // _advancedDrawerController.value = AdvancedDrawerValue.visible();
      _advancedDrawerController.showDrawer();


    }

    return Scaffold(
      body: _mainscreens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Center(
          child: Icon(Icons.shopping_bag_outlined,size: 25,),
        ),
        //par
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Styles.whiteColor,
        icons: [
          Icons.home_outlined,
          Icons.favorite_border,
          Icons.notifications_none,
          Icons.person_outline,

        ],
        iconSize: 30,
        activeColor: Styles.blueColor,
        // inactiveColor: Colors.pink,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,

        notchSmoothness: NotchSmoothness.verySmoothEdge,

        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _currentIndex = index),
        //other params
      ),
    );
  }
}
