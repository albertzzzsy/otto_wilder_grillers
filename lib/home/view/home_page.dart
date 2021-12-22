import 'package:flutter/material.dart';
import 'package:flutter_login/home/view/home_page_nav.dart';




class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Recipes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Shopping List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest),
            label: "Preferences",
          ),
        ],
      ),
      body: IndexedStack(
        children: <Widget>[
          HomePageNav(),
        ],
      ),
    );
  }
}
