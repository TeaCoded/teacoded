import 'package:portfolio/view/education/constant/education_container.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: desktop());
  }

  Widget desktop() {
    return SizedBox(
        child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: Responsive.width(context,
              width: Responsive.isDesktop(context) ? 0.03 : 0.05)),
      child: Column(
        children: [
          ScreenNameTitle(
              fontSize: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.04 : 0.06),
              textOne: 'My',
              textTwo: 'Education'),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.height(context, height: 0.02),
                vertical: Responsive.height(context, height: 0.01)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EducationContainer(
                  containerHeight: Responsive.isDesktop(context) ? 0.186 : 0.27,
                  width: Responsive.isDesktop(context) ? 0.23 : 0.29,
                  imageHeight: Responsive.isDesktop(context) ? 0.13 : 0.2,
                  image: '1',
                  courseFontSize: Responsive.isDesktop(context) ? 0.012 : 0.014,
                  yearFontSize: Responsive.isDesktop(context) ? 0.009 : 0.011,
                  nameFontSize: Responsive.isDesktop(context) ? 0.011 : 0.0125,
                  course: 'Secondary',
                  name: 'National Institute of Open Schooling',
                  year: 'Completed 2019 - 20',
                ),
                EducationContainer(
                  containerHeight: Responsive.isDesktop(context) ? 0.186 : 0.27,
                  width: Responsive.isDesktop(context) ? 0.23 : 0.29,
                  imageHeight: Responsive.isDesktop(context) ? 0.13 : 0.2,
                  image: '2',
                  courseFontSize: Responsive.isDesktop(context) ? 0.012 : 0.014,
                  yearFontSize: Responsive.isDesktop(context) ? 0.009 : 0.011,
                  nameFontSize: Responsive.isDesktop(context) ? 0.011 : 0.0125,
                  course: 'Senior Secondary (Commerce)',
                  name: 'National Institute of Open Schooling',
                  year: 'Completed 2021 - 22',
                ),
                EducationContainer(
                  containerHeight: Responsive.isDesktop(context) ? 0.186 : 0.27,
                  width: Responsive.isDesktop(context) ? 0.23 : 0.29,
                  imageHeight: Responsive.isDesktop(context) ? 0.13 : 0.2,
                  image: '3',
                  courseFontSize: Responsive.isDesktop(context) ? 0.012 : 0.014,
                  yearFontSize: Responsive.isDesktop(context) ? 0.009 : 0.011,
                  nameFontSize: Responsive.isDesktop(context) ? 0.011 : 0.0125,
                  course: 'Bachelor of Computer Application',
                  name: 'Uttaranchal University',
                  year: 'Pursuing 2023 -26',
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget mobile() {
    return Padding(
        padding: EdgeInsets.all(Responsive.width(context, width: 0.02)),
        child: SizedBox(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ScreenNameTitle(
                  fontSize: Responsive.width(context, width: 0.07),
                  textOne: 'My',
                  textTwo: 'Education'),
              SizedBox(
                height: Responsive.width(context, width: 0.02),
              ),
              const EducationContainer(
                containerHeight: 0.78,
                width: 0.9,
                imageHeight: 0.6,
                image: '1',
                courseFontSize: 0.045,
                yearFontSize: 0.03,
                nameFontSize: 0.04,
                course: 'Secondary',
                name: 'National Institute of Open Schooling',
                year: 'Completed 2019 - 20',
              ),
              SizedBox(
                height: Responsive.width(context, width: 0.02),
              ),
              const EducationContainer(
                containerHeight: 0.78,
                width: 0.9,
                imageHeight: 0.6,
                image: '2',
                courseFontSize: 0.045,
                yearFontSize: 0.03,
                nameFontSize: 0.04,
                course: 'Senior Secondary (Commmerce)',
                name: 'National Institute of Open Schooling',
                year: 'Completed 2021 - 22',
              ),
              SizedBox(
                height: Responsive.width(context, width: 0.02),
              ),
              const EducationContainer(
                containerHeight: 0.78,
                width: 0.9,
                imageHeight: 0.6,
                image: '3',
                courseFontSize: 0.045,
                yearFontSize: 0.03,
                nameFontSize: 0.04,
                course: 'Bachelor of Computer Application',
                name: 'Uttaranchal University',
                year: 'Pursuing 2023 - 26',
              ),
            ])));
  }
}
