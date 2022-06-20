import 'package:flutter/material.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  List text = [
    'Mountain hikes gives you a an incredible sense of freedom along with endurance tests.',
    'I’ve never understood hiring Sherpas to claim you’ve conquered Everest. I’d rather climb a mountain half the size and be able to say I’ve done it on my own.',
    'I took a walk in the woods and came out taller than trees.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/" + images[index]))),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(text: 'Trips'),
                        AppText(
                            text: 'Mountain', fontweight: FontWeight.normal),
                        Container(
                          width: 250,
                          child: AppText(
                              text: text[index],
                              fontweight: FontWeight.normal,
                              size: 12),
                        ),
                        SizedBox(height: 40),
                        ResponsiveButton()

                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
