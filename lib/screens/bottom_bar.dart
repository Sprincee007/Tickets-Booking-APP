import 'package:booktickets/screens/Profile_screen.dart';
import 'package:booktickets/screens/Search_screen.dart';
import 'package:booktickets/screens/Ticket_Screen.dart';
import 'package:booktickets/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// A widget that displays a bottom navigation bar.
class BottomBar extends StatefulWidget {
  /// Creates a new instance of the [BottomBar] class.
  ///
  /// Parameters:
  ///   - key: The key to use for the widget.
  const BottomBar({Key? key}) : super(key: key);

  /// Creates a new state for the [BottomBar] widget.
  ///
  /// Returns:
  ///   A new state for the [BottomBar] widget.
  @override
  State<BottomBar> createState() => _BottomBarState();
}

/// The state of the [BottomBar] widget.
class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  /// Called when an item in the bottom navigation bar is tapped.
  ///
  /// Parameters:
  ///   - index: The index of the tapped item.
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  /// Builds the widget tree for the bottom navigation bar.
  ///
  /// This method is called by the Flutter framework to build the widget tree for the bottom navigation bar.
  ///
  /// Parameters:
  ///   - context: The build context for the bottom navigation bar.
  ///
  /// Returns:
  ///   A widget that represents the bottom navigation bar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: 'Profile')

        ],

      ),
    );
  }
}
