import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/app_text.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      child: Row(
        children: [
          Image(
              image: const AssetImage('assets/images/coding.gif'),
              width: Responsive.width(context,
                  width: Responsive.isDesktop(context) ? 0.35 : 0.45)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScreenNameTitle(
                  fontSize: Responsive.width(context,
                      width: Responsive.isDesktop(context) ? 0.04 : 0.06),
                  textOne: 'About',
                  textTwo: 'Me'),
              SizedBox(
                  width: Responsive.width(context,
                      width: Responsive.isDesktop(context) ? 0.43 : 0.53),
                  child: Text(
                    AppText.about,
                    style: MyTextStyle.ubuntuMedium(
                        fontSize: Responsive.width(context,
                            width:
                                Responsive.isDesktop(context) ? 0.014 : 0.0173),
                        color: MyColors.white),
                  ))
            ],
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
              const SizedBox(
                height: 10,
              ),
              Image(
                  image: const AssetImage('assets/images/coding.gif'),
                  width: Responsive.width(context, width: 0.8)),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScreenNameTitle(
                    fontSize: Responsive.width(context, width: 0.07),
                    textOne: 'About',
                    textTwo: 'Me',
                  ),
                  Text(
                    AppText.about,
                    style: MyTextStyle.ubuntuMedium(
                        fontSize: Responsive.width(context, width: 0.035),
                        color: Colors.white),
                  ),
                ],
              )
            ])));
  }
}
