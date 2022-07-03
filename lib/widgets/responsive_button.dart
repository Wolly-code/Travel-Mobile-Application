import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_large_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: 'Book Trip Now',
                      color: Colors.white,
                      size: 16,
                      fontweight: FontWeight.normal,
                    ),
                  )
                : Container(),
            Image.asset("images/button-one.png")
          ],
        ),
      ),
    );
  }
}
