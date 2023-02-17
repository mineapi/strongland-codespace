import 'package:flutter/material.dart';
import 'package:strongland/social_icons_icons.dart';
import 'package:strongland/widgets/HomePageWidget.dart';
import 'package:strongland/widgets/NavRailWidget.dart';
import 'dart:html';

class HomePageState extends State<HomePageWidget> {
  late Image landingImage;

  HomePageState(this.landingImage);

  @override
  void initState() {
     landingImage = Image.asset("landing.jpg",
                            width: 6000,
                            height: 6000,
                            fit: BoxFit.cover,
                          );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(landingImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(landingImage.image, context);
    return Scaffold(
      body: Center(
            child: SizedBox(
              width: 500,
              child:Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: landingImage,
                    ),
                  ),
                  const ListTile(
                    title: Text("Will Strong", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),),
                    subtitle: Text("Developer & 3D Artist"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: () {
                            //await launchUrl(Uri.parse("https://github.com/mineapi"));
                            window.open("https://github.com/mineapi", "Github");
                          },
                        icon: const Icon(SocialIcons.github_circled),
                      ),
                      IconButton(onPressed: () async {
                            //await launchUrl(Uri.parse("https://twitter.com/mineapi"));
                          },
                        icon: const Icon(SocialIcons.twitter),
                      ),
                      IconButton(onPressed: () async {
                            //await launchUrl(Uri.parse("https://youtube.com/c/mineapi"));
                          },
                        icon: const Icon(SocialIcons.youtube),
                      ),
                      IconButton(onPressed: () async {
                            //await launchUrl(Uri.parse("https://discord.gg/WkSaCDWxUm"));
                          },
                        icon: const Icon(SocialIcons.discord),
                      ),
                    ],
                  ),
                ],
              ),
            ), 
          ),
      ),
    );
  }
}