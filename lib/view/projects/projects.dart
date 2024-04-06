import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/view/projects/constant/list.dart';
import 'package:portfolio/view/projects/constant/project_container.dart';
import 'package:portfolio/widgets/screen_name_title.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile(), desktop: desktop());
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
                  textTwo: 'Projects'),
              SizedBox(
                height: Responsive.width(context, width: 0.02),
              ),
              CarouselSlider.builder(
                itemCount: allProjects.length,
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enlargeFactor: 0.28,
                    pageSnapping: true,
                    autoPlay: true,
                    viewportFraction: 0.72,
                    height: Responsive.width(context, width: 0.4),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return ProjectContainer(
                    link: allProjects[itemIndex].link,
                    imageName: allProjects[itemIndex].image,
                  );
                },
              )
            ])));
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
              textTwo: 'Projects'),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.height(context, height: 0.02),
                vertical: Responsive.height(context, height: 0.01)),
            child: CarouselSlider.builder(
              itemCount: allProjects.length,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                  pageSnapping: true,
                  autoPlay: true,
                  viewportFraction: 0.4,
                  height: Responsive.width(context,
                      width: Responsive.isDesktop(context) ? 0.18 : 0.22),
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn),
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return ProjectContainer(
                    link: allProjects[itemIndex].link,
                    imageName: allProjects[itemIndex].image);
              },
            ),
          )
        ],
      ),
    ));
  }
}
