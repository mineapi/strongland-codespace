import 'package:flutter/material.dart';
import 'package:strongland/states/ContactPageState.dart';
import 'package:strongland/states/HomePageState.dart';

class ContactPageWidget extends StatefulWidget {
  const ContactPageWidget({super.key, required this.title});

  final String title;

  @override
  State<ContactPageWidget> createState() => ContactPageState();
}