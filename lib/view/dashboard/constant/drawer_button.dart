import 'package:portfolio/view/dashboard/constant/logo.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class NavMenuButton extends StatelessWidget {
  final Function() menuOnTap;
  final Function() logoOnTap;
  const NavMenuButton({
    super.key,
    required this.menuOnTap,
    required this.logoOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Row(
        children: [
          GestureDetector(
              onTap: menuOnTap,
              child: Icon(
                Icons.menu,
                color: MyColors.white,
              )),
          const SizedBox(
            width: 10,
          ),
          Logo(onTap: logoOnTap),
        ],
      ),
    );
  }
}
