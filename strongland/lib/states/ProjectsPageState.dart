import 'dart:html';

import 'package:flutter/material.dart';
import 'package:strongland/social_icons_icons.dart';
import 'package:strongland/widgets/ContactPageWidget.dart';
import 'package:strongland/widgets/ProjectsPageWidget.dart';

class ProjectsPageState extends State<ProjectsPageWidget> {
  Image notifyImage = Image.asset("notify.png",
                            width: 2000,
                            height: 1000,
                            fit: BoxFit.cover,
                          );

  @override
  Widget build(BuildContext context) {
    precacheImage(notifyImage.image, context);
   return Scaffold(
      body: Center(
            child: SizedBox(
              width: 300,
              child:Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: notifyImage,
                    ),
                  ),
                  const ListTile(
                    title: Text("Notify", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),),
                    subtitle: Text("A collaborative project to create a mobile app for a FBLA competition."),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 8.0, horizontal: 8.0),
                    child: IconButton(
                      icon: const Icon(SocialIcons.github_circled),
                      onPressed: () {
                        window.open("https://github.com/mineapi/notify", "Notify");
                      },),
                    ),
                  )
                ],
              ),
            ), 
          ),
      ),
    );
  }
}