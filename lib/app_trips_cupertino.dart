import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class AppTripsCupertino extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppTripsCupertino();
  }
}

class _AppTripsCupertino extends State<AppTripsCupertino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.purple,
          inactiveColor: Colors.grey,
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
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
          }
        },
      ),
    );
  }
}