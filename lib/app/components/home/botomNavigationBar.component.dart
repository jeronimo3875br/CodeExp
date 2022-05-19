import "package:flutter/material.dart";

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() {
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: "Projects",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Messages",
        ),
      ],
      onTap: (index) => setState(() => _currentIndex = index),
    );
  }
}
