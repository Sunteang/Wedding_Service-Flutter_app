import 'package:flutter/material.dart';
import '../../screens/Home/BookingsPage.dart';
import '../../screens/Home/OffersPage.dart';
import '../../screens/Home/AccountPage.dart';
import '../../screens/Home/HomeScreen.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  // List of widgets to display for each tab
  final List<Widget> _pages = [
    HomeScreen(),
    BookingsPage(),
    WeddingOffersPage(),
    WeddingAccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex], // Switch body based on selected index
      ),
      bottomNavigationBar: Container(
        padding:
            const EdgeInsets.only(top: 8.0), // Add padding (e.g., top padding)
        decoration: const BoxDecoration(
          color: Colors.white, // Set the background color
          border: Border(
            top: BorderSide(
                color: Colors.grey, width: 0.5), // Optional border on top
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors
              .transparent, // Make it transparent so Container color shows
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink, // Color for the selected item
          unselectedItemColor: Colors.grey, // Color for unselected items
          type: BottomNavigationBarType.fixed, // Ensure fixed layout
          elevation: 0, // Remove any elevation shadow
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
          onTap: _onItemTapped, // Change tab on tap
        ),
      ),
    );
  }
}
