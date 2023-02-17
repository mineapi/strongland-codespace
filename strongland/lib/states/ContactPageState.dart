import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:strongland/widgets/ContactPageWidget.dart';
import 'dart:html';

class ContactPageState extends State<ContactPageWidget> {
  Image landingImage = Image.asset("landing.jpg",
                            width: 6000,
                            height: 6000,
                            fit: BoxFit.cover,
                          );

  String subject = "";
  String message = "";

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
                    title: Text("Contact", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),),
                    subtitle: Text("Email me!"),
                  ),
                  
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          onChanged: (value) => subject = value,
                          decoration: const InputDecoration(label: Text("Subject")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          onChanged: (value) => message = value,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration(
                            label: Text("Message")
                            ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0, vertical: 16.0),
                            child: FilledButton(
                            onPressed: () {
                              final mailtoLink = Mailto(
                                to: ['will@strongland.me'],
                                subject: subject,
                                body: message
                              );

                              window.open('$mailtoLink', "Email");
                            },
                            child: const Text("Submit"),
                          ),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ), 
          ),
      ),
    );
  }
}