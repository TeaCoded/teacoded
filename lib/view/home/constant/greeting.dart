import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour <= 11) {
    return 'Good Morning!';
  } else if ((hour >= 12) && (hour <= 17)) {
    return 'Good Afternoon!';
  } else if ((hour >= 17) && (hour <= 23)) {
    return 'Good Evening!';
  } else {
    return 'Good Night!';
  }
}

class Greeting extends StatelessWidget {
  final double fontSize;
  final double width;
  final double imageHeight;
  const Greeting({
    super.key,
    required this.fontSize,
    required this.width,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.width(context, width: width),
      child: Row(
        children: [
          Text(
            greeting(),
            style: MyTextStyle.ubuntuMedium(
                fontSize: Responsive.width(context, width: fontSize),
                color: MyColors.white),
          ),
          Lottie.asset(
            'assets/json/hi.json',
            height: Responsive.width(context, width: imageHeight),
          ),
        ],
      ),
    );
  }
}
