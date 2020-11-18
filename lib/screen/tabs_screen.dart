import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:recipe_menu_neumorphic/screen/categories_screen.dart';
import 'package:recipe_menu_neumorphic/screen/faforites_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      "page": CategoriesScreen(),
      "title": "Categories",
    },
    {
      "page": FavoritesScreen(),
      "title": "Your Favorites",
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          _pages[_selectedPageIndex]["title"],
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: _pages[_selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).appBarTheme.color,
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).appBarTheme.color,
            icon: Icon(Icons.category),
            label: ("Categories"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).appBarTheme.color,
            icon: Icon(Icons.star),
            label: ("Favorites"),
          ),
        ],
      ),
    );
  }
}
