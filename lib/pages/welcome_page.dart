import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
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
    'I’ve never understood hiring Sherpas to claim you’ve conquered Everest. ',
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
                width: double.infinity,
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(text: 'Trips'),
                        AppText(
                          text: 'Mountain',
                          size: 30,
                        ),
                        Container(
                          width: 250,
                          padding: const EdgeInsets.only(top: 15),
                          child: AppText(
                            text: text[index],
                            fontweight: FontWeight.normal,
                            size: 14,
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(height: 40),
                        ResponsiveButton(),
                      ],
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (indexDots) => Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                width: 8,
                                height: index == indexDots ? 25 : 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: index == indexDots
                                        ? AppColors.mainColor
                                        : AppColors.mainColor.withOpacity(0.5)),
                              )),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
