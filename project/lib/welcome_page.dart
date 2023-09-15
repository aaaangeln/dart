import 'package:flutter/material.dart';
import 'package:project/widgets/app_large_text.dart';
import 'package:project/widgets/app_text.dart';
import 'package:project/widgets/button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "first.jpeg",
    "second.jpeg",
    "three.jpeg",
    "four.jpeg"
  ];
  List text=[
    "Welcome",
    "WELCOME",
    "hello",
    "HELLO"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/"+images[index]
                    ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: text[index]),
                        AppText(text: "User", size: 30),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: "text text textbjfbjfbh fbhjdbfbdfjbjfbjdhbjbvdjkbd chbjdb",
                            size: 14,

                          ),
                        ),
                        SizedBox(height: 40,),
                        Button(width: 100,),
                      ],
                    ),
                  ],
                ),
              ),
            );
      }),
    );
  }
}
