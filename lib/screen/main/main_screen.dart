import 'package:flutter/material.dart';
import 'package:tourism_app/screen/bookmark/bookmark_screen.dart';
import 'package:tourism_app/screen/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indexBottomNavbar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switch (_indexBottomNavbar) {
        0 => const HomeScreen(),
        _ => const BookmarkScreen(),
      },
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexBottomNavbar,
        onTap: (index) {
          setState(() {
            _indexBottomNavbar = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
            tooltip: 'Bookmark',
          ),
        ],
      ),
    );
  }
}
