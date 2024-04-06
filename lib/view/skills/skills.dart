import 'package:portfolio/view/skills/constant/soft_skill_and_mindset.dart';
import 'package:portfolio/view/skills/constant/technical_skills.dart';
import 'package:portfolio/widgets/screen_name_title.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:flutter/material.dart';


class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: desktop());
  }

  Widget desktop() {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.width(context,
                width: Responsive.isDesktop(context) ? 0.02 : 0.03)),
        child: Column(
          children: [
            ScreenNameTitle(
                fontSize: Responsive.width(context,
                    width: Responsive.isDesktop(context) ? 0.04 : 0.06),
                textOne: 'My',
                textTwo: 'Skills'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(context,
                      width: Responsive.isDesktop(context) ? 0.03 : 0.02)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(
                        image: const AssetImage('assets/images/skills.gif'),
                        height: Responsive.width(context,
                            width:
                                Responsive.isDesktop(context) ? 0.17 : 0.217),
                      ),
                      SoftSkillAndMindset(
                        headingFontSize:
                        Responsive.isDesktop(context) ? 0.025 : 0.03,
                        skillFontSize:
                        Responsive.isDesktop(context) ? 0.015 : 0.02,
                        width: Responsive.isDesktop(context) ? 0.34 : 0.45,
                        height: Responsive.isDesktop(context) ? 0.164 : 0.2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TechnicalSkills(
                        headingFontSize:
                            Responsive.isDesktop(context) ? 0.025 : 0.03,
                        skillFontSize:
                            Responsive.isDesktop(context) ? 0.015 : 0.02,
                        width: Responsive.isDesktop(context) ? 0.34 : 0.45,
                        height: Responsive.isDesktop(context) ? 0.34 : 0.42,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
                  textTwo: 'Skills'),
              Image(
                  image: const AssetImage('assets/images/skills.gif'),
                  width: Responsive.width(context, width: 0.5)),
              SizedBox(height: Responsive.width(context, width: 0.04)),
              const TechnicalSkills(
                headingFontSize: 0.06,
                skillFontSize: 0.04,
                width: 0.9,
                height: 0.75,
              ),
              SizedBox(height: Responsive.width(context, width: 0.04)),
              const SoftSkillAndMindset(
                headingFontSize: 0.06,
                skillFontSize: 0.04,
                width: 0.9,
                height: 0.36,
              ),
            ])));
  }
}
