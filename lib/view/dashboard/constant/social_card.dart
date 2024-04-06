import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String label;
  final String assetName;
  final Function() onTap;

  const SocialCard({
    super.key,
    required this.label,
    required this.assetName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Responsive.width(context, width: 0.004)),
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.18)
              : 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/$assetName.png',
                    height: Responsive.isDesktop(context)
                        ? Responsive.width(context, width: 0.02)
                        : 25,
                    width: Responsive.isDesktop(context)
                        ? Responsive.width(context, width: 0.02)
                        : 25,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    label,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.02 - 0.007)
                            : 18,
                        color: MyColors.navWhite),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
