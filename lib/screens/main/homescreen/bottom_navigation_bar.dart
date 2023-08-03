import 'package:exam/core/const/constants.dart';
import 'package:exam/screens/main/homescreen/buy/buy_page.dart';
import 'package:exam/screens/main/homescreen/favourite/favourite_page.dart';
import 'package:exam/screens/main/homescreen/homepage/home_page.dart';

import 'package:exam/screens/main/homescreen/person/person_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  BottomMenu _bottomMenu=BottomMenu.home;
  void _selectedTab(BottomMenu tab){
    setState(() {
      _bottomMenu=tab;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomMenu.index,

        children: [
         HomePage(),
          Container(),
          FavouritePage(),
          PersonPage(),
          BuyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomMenu.index,

        onTap: (index){
          _selectedTab(BottomMenu.values[index]);
        },

        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.home_icon),label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.menu_icon),label:'Like' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.like_svg),label: 'Bag' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.person_icon),label: 'Wallet' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcon.buy_icon),label: 'Wallet' ),

        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor:AppColors.C_F3AF00,
      ),
    );
  }
}
enum BottomMenu{
  home,
  menu,
  like,
  person,
  buy,

}