import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/components/my_drawer.dart';
import 'package:travel/i_appbar.dart';
import 'package:travel/page/my_bar.dart';
import 'package:travel/page/my_compass.dart';
import 'package:travel/page/my_globe.dart';
import 'package:travel/page/my_message.dart';
import 'package:travel/page/my_profile.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  List pages = [
    MyGlobe(),
    MyCompass(),
    MyBar(),
    MyProfile(),
    My_Message(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Text('Home'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink[400],
          type: BottomNavigationBarType.fixed, //  to allow background color
          backgroundColor: Colors.grey[850],
          elevation: 0,
          iconSize: 30.0,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.globe,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.compass,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bars,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
