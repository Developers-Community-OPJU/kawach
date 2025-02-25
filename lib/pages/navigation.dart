import 'package:flutter/material.dart' hide Colors;
import 'package:kawach/constant/color.dart';
import 'package:kawach/pages/subpage/contact.dart';
import 'package:kawach/pages/subpage/home.dart';
import 'package:kawach/pages/subpage/nav.dart';
import 'package:kawach/pages/subpage/stats.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int navIndex = 0;
  List<Widget> navPage = [
    const HomePage(),
    const NavPage(),
    const StatsPage(),
    const ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.gray,
        selectedItemColor: Colors.primary,
        backgroundColor: Colors.white,
        currentIndex: navIndex,
        onTap: (index) {
          setState(() {
            navIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.navigation), label: "Nav"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Stats"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact us"),
        ],
      ),
      body: navPage[navIndex],
    );
  }
}
