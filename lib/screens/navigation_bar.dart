import 'package:flutter/material.dart';
import 'package:my_cats/screens/anonymous_page.dart';
import 'package:my_cats/screens/cats_home_screen.dart';
import 'package:my_cats/screens/challenge_screen.dart';
import 'package:my_cats/screens/favorate_cats_scree.dart';

class NaigationBarScreen extends StatefulWidget {
  const NaigationBarScreen({super.key});

  @override
  State<NaigationBarScreen> createState() => _NaigationBarScreenState();
}

class _NaigationBarScreenState extends State<NaigationBarScreen> {
  List screens = [
    const CatsHomeScreen(),
    const FavorateCatScreen(),
    const ChallengeScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          backgroundColor: const Color.fromARGB(255, 189, 214, 226),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
