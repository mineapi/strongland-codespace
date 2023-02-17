import 'package:flutter/material.dart';
import 'package:strongland/states/HomePageState.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key, required this.title});

  final String title;

  @override
  State<HomePageWidget> createState() => HomePageState();
}