import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class MenuTitle extends StatelessWidget {
  final String title;
  const MenuTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Responsive.width(
            context,
            width: 0.01,
          ),
          left: Responsive.isDesktop(context) ? 0 : 13),
      child: SizedBox(
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.18)
              : 250,
          child: Text(title,
              style: MyTextStyle.ubuntuMedium(
                  fontSize: Responsive.isDesktop(context)
                      ? Responsive.width(context, width: 0.018)
                      : 25,
                  color: MyColors.navWhite))),
    );
  }
}
