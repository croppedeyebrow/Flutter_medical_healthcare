import "package:flutter/material.dart";
import "package:flutter_medicalhealthcare/screens/home_screen.dart";
import "package:flutter_medicalhealthcare/screens/messages_screen.dart";
import "package:flutter_medicalhealthcare/screens/schedule_screen.dart";
import "package:flutter_medicalhealthcare/screens/settings_screnn.dart";

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;

  final _screens = [
    // HomeScreen(),
    HomeScreen(),
    // Messages Screen
    MessageScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Settings Screen
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff7165D6),
          unselectedItemColor: Colors.black38,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "채팅"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "달력"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
          ],
        ),
      ),
    );
  }
}
