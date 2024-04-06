import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class EducationContainer extends StatelessWidget {
  final double containerHeight;
  final double courseFontSize;
  final double nameFontSize;
  final double yearFontSize;
  final double imageHeight;
  final double width;
  final String image;
  final String course;
  final String name;
  final String year;

  const EducationContainer({
    super.key,
    required this.containerHeight,
    required this.imageHeight,
    required this.width,
    required this.image,
    required this.courseFontSize,
    required this.nameFontSize,
    required this.yearFontSize,
    required this.course,
    required this.name,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.width(context, width: containerHeight),
      width: Responsive.width(context, width: width),
      decoration: BoxDecoration(
          color: MyColors.white17, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset('assets/images/image $image.jpg',
                fit: BoxFit.fill,
                height: Responsive.width(context, width: imageHeight),
                width: Responsive.width(context, width: width)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Responsive.width(context, width: 0.002)),
            child: Text(
              course,
              style: MyTextStyle.ubuntuMedium(
                  fontSize: Responsive.width(context, width: courseFontSize),
                  color: MyColors.white),
            ),
          ),
          Text(
            name,
            style: MyTextStyle.ubuntuMedium(
                fontSize: Responsive.width(context, width: nameFontSize),
                color: MyColors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Responsive.width(context, width: 0.002)),
            child: Text(
              year,
              style: MyTextStyle.ubuntuMedium(
                  fontSize: Responsive.width(context, width: yearFontSize),
                  color: MyColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
