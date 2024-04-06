import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final int index;
  final ItemScrollController itemScrollController;
  final String title;

  const MenuButton(
      {super.key,
      required this.index,
      required this.itemScrollController,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemScrollController.scrollTo(
          index: index,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.isDesktop(context)
                ? Responsive.width(context, width: 0.003)
                : 5,
            horizontal: Responsive.isDesktop(context)
                ? Responsive.width(context, width: 0.006)
                : 13),
        margin: EdgeInsets.symmetric(
          vertical: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.0015)
              : 3,
        ),
        width: Responsive.isDesktop(context)
            ? Responsive.width(context, width: 0.18)
            : 250,
        child: Row(
          children: [
            Image.asset(
              'assets/icons/$title.png',
              height: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.016)
                  : 23,
              width: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.016)
                  : 23,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              title,
              style: MyTextStyle.varelaRound(
                  fontSize: Responsive.isDesktop(context)
                      ? Responsive.width(context, width: 0.016 * 0.9)
                      : 18,
                  color: MyColors.navWhite),
            )
          ],
        ),
      ),
    );
  }
}
