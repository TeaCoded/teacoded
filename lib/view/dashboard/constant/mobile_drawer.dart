import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:portfolio/view/dashboard/constant/drawer_button.dart';
import 'package:portfolio/view/dashboard/constant/menu.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  final ItemScrollController itemScrollController;
  final Function() menuOnTap;
  final Function() logoOnTap;
  const MobileDrawer({
    super.key,
    required this.itemScrollController,
    required this.menuOnTap,
    required this.logoOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: Responsive.height(context, height: 1),
      child: Scaffold(
          backgroundColor: MyColors.black,
          appBar: AppBar(
            backgroundColor: MyColors.black,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(left: 15,top: 5),
              child: NavMenuButton(
                menuOnTap: menuOnTap,
                logoOnTap: logoOnTap,
              ),
            ),
          ),
          body: Menu(
            itemScrollController: itemScrollController,
          )),
    );
  }
}
