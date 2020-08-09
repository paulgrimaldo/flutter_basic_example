import 'package:flutter/material.dart';
import 'package:trips_app/search_trips.dart';

import 'home_trips.dart';

class TripsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TripsApp();
}

class _TripsApp extends State<TripsApp> {
  final List<Widget> navigationItems = [
    HomeTrips(),
    SearchTrips(),
  ];

  int navigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationItems[navigationIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
            ),
          ],
        ),
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      navigationIndex = index;
    });
  }
}
