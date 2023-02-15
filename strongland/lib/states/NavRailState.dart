import 'package:flutter/material.dart';
import 'package:strongland/widgets/ContactPageWidget.dart';
import 'package:strongland/widgets/HomePageWidget.dart';
import 'package:strongland/widgets/NavRailWidget.dart';
import 'package:strongland/widgets/ProjectsPageWidget.dart';

class NavRailState extends State<NavRailWidget> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;
  List<Widget> pages = [
    const HomePageWidget(title: ' '),
    const ProjectsPageWidget(title: ' '),
    const ContactPageWidget(title: ' ')
  ];

  Widget selectedPage = const HomePageWidget(title: ' ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              groupAlignment: groupAligment,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                  selectedPage = pages[_selectedIndex];
                });
              },
              labelType: labelType,
              
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home_filled),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book_outlined),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Projects'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.mail_outline),
                  selectedIcon: Icon(Icons.mail),
                  label: Text('Contact'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: selectedPage,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.mail_outlined), 
        ),
    );
  }
}