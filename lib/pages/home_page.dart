import 'package:atlas_fundi/screens/map.dart';
import 'package:atlas_fundi/screens/settings.dart';
import 'package:atlas_fundi/screens/statistics.dart';
import 'package:flutter/material.dart';

import 'drawer_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 0);
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (index) {},
          controller: _pageController,
          children: <Widget>[
            MapScreen(
              scaffoldKey: _scaffoldKey,
            ),
            StatisticsScreen(),
            SettingsScreen()
          ],
        ),
        drawer: DrawerPage(
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black45,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.compare),
              title: Text('Map'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              title: Text('Stats'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ));
  }

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }
}
