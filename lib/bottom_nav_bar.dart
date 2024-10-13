import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yoliday/BottomBarScreens/home_screen.dart';
import 'package:yoliday/BottomBarScreens/input_screen.dart';
import 'package:yoliday/BottomBarScreens/portfolio_screen.dart';
import 'package:yoliday/BottomBarScreens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1; 
  
   static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PortfolioScreen(),
    InputScreen(),
    ProfileScreen(),
  ];// Default selected index is Portfolio

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red, // Tapped color
        unselectedItemColor: Colors.grey, // Inactive color
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // To keep all items visible
      ),
    );
  }
}