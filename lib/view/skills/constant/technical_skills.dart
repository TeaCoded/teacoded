import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class TechnicalSkills extends StatelessWidget {
  final double width;
  final double height;
  final double headingFontSize;
  final double skillFontSize;
  const TechnicalSkills({
    super.key,
    required this.width,
    required this.height,
    required this.headingFontSize,
    required this.skillFontSize,
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
                textOne: 'Technical Skills',
                textTwo: ''),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Programming Language',
                name: 'Dart'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Mobile App Development',
                name: 'Flutter'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'API Integration',
                name: 'RESTful APIs'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Design Tools',
                name: 'Figma'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'State management',
                name: 'GetX'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Backend Services',
                name: 'Firebase'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Version control',
                name: 'Git'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Collaboration',
                name: 'GitHub'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'Automation',
                name: 'GitHub Action'),
            Skills(
                fontSize: Responsive.width(context, width: skillFontSize),
                category: 'IDEs',
                name: 'Android Studio, Visual Studio Code'),
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  final String category;
  final String name;
  final double fontSize;
  const Skills({
    super.key,
    required this.fontSize,
    required this.category,
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
            ' $category: ',
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize,
                color: MyColors.white,
                fontWeight: FontWeight.w700),
          ),
          Text(
            name,
            style: MyTextStyle.ubuntuMedium(
                fontSize: fontSize, color: MyColors.white),
          )
        ],
      ),
    );
  }
}
