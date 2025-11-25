import 'package:clonedriblleapp/pages/home_page.dart';
import 'package:clonedriblleapp/pages/map_page.dart';
import 'package:clonedriblleapp/pages/profile.dart';
import 'package:clonedriblleapp/pages/setting_page.dart';
import 'package:clonedriblleapp/pages/transfert_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  int _selectedIndex = 0;

  void _changeIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    MapPage(),
    TransfertPage(),
    SettingPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 218, 218),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        enableFeedback: true,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600
        ),
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.transfer_within_a_station), label: 'Transfert'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ]
      ),
      body: _pages[_selectedIndex],
    );
  }
}