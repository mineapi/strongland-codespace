import 'package:flutter/material.dart';
import 'package:strongland/states/ContactPageState.dart';
import 'package:strongland/states/HomePageState.dart';
import 'package:strongland/states/ProjectsPageState.dart';

class ProjectsPageWidget extends StatefulWidget {
  const ProjectsPageWidget({super.key, required this.title});

  final String title;

  @override
  State<ProjectsPageWidget> createState() => ProjectsPageState();
}