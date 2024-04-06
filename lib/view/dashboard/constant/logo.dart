import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Function() onTap;

  const Logo({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Responsive.width(context, width: 0.015),
            ),
            SizedBox(
              width: Responsive.width(context, width: 0.009),
            ),
            Text(
              'Chirag Bhatia',
              style: TextStyle(fontFamily: 'SquarePeg-Regular', fontSize: 32, color: MyColors.red, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
