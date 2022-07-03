import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_buttons.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mountain.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            top: 290,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "Yosemite",
                        fontweight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      AppText(
                        text: "\$ 250",
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.mainColor,
                      ),
                      AppText(
                        text: "USA, California",
                        color: AppColors.textColor1,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: index < gottenStars
                                ? AppColors.starColor
                                : AppColors.textColor2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AppText(
                        text: "(4.0)",
                        size: 15,
                        color: AppColors.textColor2,
                      )
                    ],
                  ),
                  AppText(
                    text: "People",
                    color: Colors.black.withOpacity(0.8),
                    size: 20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AppText(
                    text: "Number of people in your group",
                    size: 15,
                    fontweight: FontWeight.normal,
                    color: AppColors.mainTextColor,
                  ),
                  Wrap(
                    spacing: 15,
                    children: List.generate(
                        5,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  print('The selected index is $selectedIndex');
                                });
                              },
                              child: AppButtons(
                                size: 50,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                                // icons: Icons.abc,
                              ),
                            )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppText(
                    text: "Description",
                    color: Colors.black.withOpacity(0.8),
                    size: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppText(
                    text:
                        "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to see the nature.",
                    color: AppColors.mainTextColor,
                    size: 13,
                    fontweight: FontWeight.normal,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(
                  size: 60,
                  color: AppColors.textColor1,
                  backgroundColor: Colors.white,
                  borderColor: AppColors.textColor2,
                  isIcon: true,
                  icons: Icons.favorite_border,
                ),
                SizedBox(
                  width: 20,
                ),
                ResponsiveButton(
                  isResponsive: true,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
