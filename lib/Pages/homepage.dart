import 'package:auction_bid_app/Pages/Auctions/auctions_page.dart';
import 'package:auction_bid_app/Pages/Product/add_new_product.dart';
import 'package:auction_bid_app/Pages/favorite_auctions_page.dart';
import 'package:auction_bid_app/Pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of widgets for each tab
  final List<Widget> _screens = [
    AuctionsPage(),
    FavoriteAuctionsPage(),
    UserProfilePage(),
    AddNewProduct(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Display the current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Auctions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: "Add new",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
