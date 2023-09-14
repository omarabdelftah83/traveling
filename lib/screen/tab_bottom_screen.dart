import 'package:flutter/material.dart';
import '../model/trips.dart';
import '../widget/appstring.dart';
import '../widget/drawer.dart';
import './favorites_screen.dart';
import 'categories_screen1.dart';

class TabsScreenBottom extends StatefulWidget {
  // const TabsScreen({Key key}) : super(key: key);

  TabsScreenBottom(this.favoritesTrip);

  final List<Trip> favoritesTrip;

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreenBottom> {
  ///favorites,,,,,////
  late List<Widget> _screen;

  @override
  void initState() {
    _screen = [
      CategoriesScreen1(),
      FavoritesScreen(widget.favoritesTrip),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_title)),
      ),
      drawer: AppDrawer(),
      body: _screen[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        // type: BottomNavigationBarType.shifting,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedScreenIndex,
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'التصنيفات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: 'المفضلة',
          ),
        ],
      ),
    );
  }

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
      _title = title[index]; //change title
    });
  }

  List<String> title = [
    AppString.app,
    AppString.favorites,
  ];
  var _title = AppString.app;
  int _selectedScreenIndex = 0;
}
