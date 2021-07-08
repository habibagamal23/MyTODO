import 'package:flutter/material.dart';
import 'package:todo/ui/setting/settinghome.dart';

import 'addTodo/AddBottomsheet.dart';
import 'list/listhome.dart';

class home extends StatefulWidget {
  static final String RouteName = "home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          return oppentodo();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("TODO list "),
        toolbarHeight: 100,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int position) {
            setState(() {
              selectedIndex = position;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings),
            )
          ],
        ),
      ),
      body: getSellectIdex(),
    );
  }

  void oppentodo() {
    showBottomSheet(
        context: context,
        builder: (builder) {
          return AddBottomsheet();
        });
  }

  Widget getSellectIdex() {
    if (selectedIndex == 0) return listhome();
    return settinghome();
  }
}
