import 'package:doctorclone/pages/book_page.dart';
import 'package:doctorclone/pages/chats_page.dart';
import 'package:doctorclone/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // selected index form bottom navigation bar
  int _selectedIndex = 0;
   
  // Function to handle bottom navigation bar item taps
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   // List of widgets for different pages
  final List _pages = <Widget>[
    HomePage(),
    BookPage(),
    ChatsPage(),
    Placeholder(), // Placeholder for My Card page
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              text: 'Hello, John\n',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              children: [
                TextSpan(
                  text: 'How are you feel today?',
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black38
                    )
                  )
                )
              ])
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: const Icon(Icons.people),
                onPressed: () {
                  // Action for settings button
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _ontap,
          unselectedLabelStyle: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600
            )
          ),
          selectedLabelStyle: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700
            )
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Book',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'My Card',
            ),
          ]
        ),
        body: _pages[_selectedIndex]
      ),
    );
  }
}