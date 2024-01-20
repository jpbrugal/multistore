import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'nav_screens/account_screen.dart';
import 'nav_screens/cart_screen.dart';
import 'nav_screens/categories_screen.dart';
import 'nav_screens/home_screen.dart';
import 'nav_screens/search_screen.dart';
import 'nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoriesScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow.shade900,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value){
          setState(() {
            _pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, size: 20,),
              label: "HOME"
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/explore.svg', width: 20,),
            label: "CATEGORIES"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/shop.svg', width: 20,),
              label: "STORE"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart.svg', width: 20,),
              label: "CART"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search.svg', width: 20,),
              label: "SEARCH"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/account.svg', width: 20,),
              label: "ACCOUNT"
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
