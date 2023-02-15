import 'package:flutter/material.dart';
import 'package:strongland/widgets/HomePageWidget.dart';
import 'package:strongland/widgets/NavRailWidget.dart';

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strongland',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xffe9c153),
      ),
      home: const NavRailWidget(),
    );
  }
}