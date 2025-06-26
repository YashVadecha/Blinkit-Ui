import 'package:blinkit_app/repositry/screens/cart/cart_screen.dart';
import 'package:blinkit_app/repositry/screens/category/category_screen.dart';
import 'package:blinkit_app/repositry/screens/home/home_screen.dart';
import 'package:blinkit_app/repositry/screens/print/print_screen.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  /// Index No
  int currenindex = 0;

  /// List of Screen
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'home.png'), label: 'Home'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'shopping.png'), label: 'Cart'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'category.png'),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'printer.png'), label: 'Print'),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currenindex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currenindex,
        children: pages,
      ),
    );
  }
}
