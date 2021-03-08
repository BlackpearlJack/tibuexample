import 'package:flutter/material.dart';

import 'home_screen.dart';


class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget>_widgetOptions = <Widget>[
    Text('My Consults'),
    Home(),
    Text('More'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tintin',),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            title: Text('My Consults'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
