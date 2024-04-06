import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String label;
  final String info;
  final String assetName;
  final Function()? onTap;

  const ContactCard({
    super.key,
    required this.label,
    required this.info,
    required this.assetName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: Responsive.width(context, width: 0.004),
              horizontal: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.003)
                  : 3),
          width: Responsive.isDesktop(context)
              ? Responsive.width(context, width: 0.23)
              : 250,
          child: Row(
            children: [
              Image.asset(
                'assets/icons/$assetName.png',
                height: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.03)
                    : 35,
                width: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.03)
                    : 35,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.012)
                            : 15,
                        color: MyColors.navWhite),
                  ),
                  Text(
                    info,
                    style: MyTextStyle.varelaRound(
                        fontSize: Responsive.isDesktop(context)
                            ? Responsive.width(context, width: 0.01)
                            : 13,
                        color: MyColors.navWhite),
                  )
                ],
              )
            ],
          )),
    );
  }
}
