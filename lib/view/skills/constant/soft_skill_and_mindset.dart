import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class SoftSkillAndMindset extends StatelessWidget {
  final double width;
  final double height;
  final double headingFontSize;
  final double skillFontSize;
  const SoftSkillAndMindset({
    super.key,
    required this.width,
    required this.headingFontSize,
    required this.skillFontSize,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.white17, borderRadius: BorderRadius.circular(30)),
      height: Responsive.width(context, width: height),
      width: Responsive.width(context, width: width),
      child: Padding(
        padding: EdgeInsets.all(Responsive.width(context, width: 0.006)),
        child: Column(
          children: [
            ScreenNameTitle(
                fontSize: Responsive.width(context, width: headingFontSize),
                textOne: 'Soft Skills and Mindset',
                textTwo: ''),
            SoftSkills(
                fontSize: Responsive.width(context, width: skillFontSize),
                name: 'Creativity'),
            SoftSkills(
                fontSize: Responsive.width(context, width: skillFontSize),
                name: 'Continuous learning mindset'),
            SoftSkills(
                fontSize: Responsive.width(context, width: skillFontSize),
                name: 'Problem-solving'),
            SoftSkills(
                fontSize: Responsive.width(context, width: skillFontSize),
                name: 'Self-motivation'),
          ],
        ),
      ),
    );
  }
}

class SoftSkills extends StatelessWidget {
  final String name;
  final double fontSize;
  const SoftSkills({
    super.key,
    required this.fontSize,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Responsive.width(context, width: 0.004)),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: MyColors.white,
              radius: Responsive.width(
                context,
                width: 0.004,
              )),
          Text(
            ' $name',
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize, color: MyColors.white),
          )
        ],
      ),
    );
  }
}
