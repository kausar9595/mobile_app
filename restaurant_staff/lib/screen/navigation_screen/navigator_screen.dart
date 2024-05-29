import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_staff/screen/ranking_screen/ranking_screen.dart';

import '../home_screen/home_screen.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  static const List pages =[
    StaffName(),
    RankingScreen(),
  ];

  void onItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius:const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: BottomNavigationBar(
            elevation: 5,
            backgroundColor: Colors.grey.shade100,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: onItem,

            selectedItemColor: Colors.indigoAccent,
            selectedLabelStyle:const TextStyle(color: Colors.indigoAccent),
            unselectedItemColor: Colors.black,
            unselectedLabelStyle:const TextStyle(color:Colors.black),
            items:const [
              BottomNavigationBarItem(

                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: "Ranking",
              ),

            ]
        ),
      ),

    ));
  }
}