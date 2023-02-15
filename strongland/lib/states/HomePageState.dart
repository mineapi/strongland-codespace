import 'package:flutter/material.dart';
import 'package:strongland/widgets/HomePageWidget.dart';
import 'package:strongland/widgets/NavRailWidget.dart';

class HomePageState extends State<HomePageWidget> {
  void SendMail() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Card(
            child: Column(
              children: const [
                Text(
                  style: TextStyle(),
                ),
              ],
            ),
          )
      ),
    );
  }
}