import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  FontWeight fontweight;
  final Color color;

  AppText(
      {Key? key,
      this.size = 30,
      this.fontweight = FontWeight.bold,
      required this.text,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
    );
  }
}
