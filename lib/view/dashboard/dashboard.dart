import 'package:portfolio/view/education/education.dart';
import 'package:portfolio/view/projects/projects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:portfolio/view/dashboard/constant/mobile_drawer.dart';
import 'package:portfolio/view/dashboard/constant/drawer_button.dart';
import 'package:portfolio/view/dashboard/constant/menu.dart';
import 'package:portfolio/view/dashboard/constant/logo.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/view/skills/skills.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/view/about/about.dart';
import 'package:portfolio/view/home/home.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Responsive.isDesktop(context)
          ? null
          : MobileDrawer(
              itemScrollController: itemScrollController,
              menuOnTap: () {
                _scaffoldKey.currentState?.closeDrawer();
              },
              logoOnTap: () {
                itemScrollController.jumpTo(index: 0);
              },
            ),
      backgroundColor: MyColors.black,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: MyColors.black,
              title: NavMenuButton(
                menuOnTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                logoOnTap: () {
                  itemScrollController.jumpTo(index: 0);
                },
              )),
      body: Responsive(
        mobile: mobile(),
        desktop: desktop(),
      ),
    );
  }

  Widget desktop() {
    return Row(
      children: [
        Responsive.isDesktop(context)
            ? SizedBox(
                width: Responsive.width(context, width: 0.2),
                height: Responsive.height(context, height: 1),
                child: Scaffold(
                  backgroundColor: MyColors.black,
                  appBar: AppBar(
                    toolbarHeight: Responsive.width(context, width: 0.05),
                    automaticallyImplyLeading: false,
                    backgroundColor: MyColors.black,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Responsive.width(context, width: 0.007)),
                      child: Logo(onTap: () {}),
                    ),
                  ),
                  body: Menu(
                    itemScrollController: itemScrollController,
                  ),
                ),
              )
            : const SizedBox(),
        SizedBox(
          width: Responsive.width(context,
              width: Responsive.isDesktop(context) ? 0.8 : 1),
          height: MediaQuery.sizeOf(context).height * 1,
          child: screenScrollable(),
        ),
      ],
    );
  }

  Widget mobile() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 1,
      height: MediaQuery.sizeOf(context).height * 1,
      child: screenScrollable(),
    );
  }

  Widget screenScrollable() {
    return ScrollablePositionedList.builder(
      itemCount: 5,
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemBuilder: (context, index) {
        return screens(index);
      },
    );
  }

  Widget screens(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const AboutPage();
      case 2:
        return const SkillsPage();
      case 3:
        return const EducationPage();
      case 4:
        return const ProjectsPage();
      default:
        return const HomePage();
    }
  }
}
