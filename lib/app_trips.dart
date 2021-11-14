import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trips.dart';
import 'Place/ui/screens/search_trips.dart';
import 'User/ui/screens/profile_trips.dart';

class AppTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppTrips();
  }
  
}

class _AppTrips extends State<AppTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          currentIndex: indexTap,
          onTap: onTapTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person)
            )
          ],
        ),
      ),
    );
  }
  
}