import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:portfolio/view/dashboard/constant/contact_card.dart';
import 'package:portfolio/view/dashboard/constant/menu_button.dart';
import 'package:portfolio/view/dashboard/constant/social_card.dart';
import 'package:portfolio/view/dashboard/constant/menu_title.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/app_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final ItemScrollController itemScrollController;
  const Menu({super.key, required this.itemScrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: Responsive.isDesktop(context) ? 0 : 10),
              child: CircleAvatar(
                backgroundColor: MyColors.red,
                backgroundImage: const AssetImage('assets/images/profile.png'),
                radius: Responsive.isDesktop(context)
                    ? Responsive.width(context, width: 0.075)
                    : 100,
              ),
            ),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? Responsive.width(context, width: 0.01)
                  : 10,
            ),
            MenuButton(
              index: 0,
              itemScrollController: itemScrollController,
              title: 'Home',
            ),
            MenuButton(
              index: 1,
              itemScrollController: itemScrollController,
              title: 'About',
            ),
            MenuButton(
              index: 2,
              itemScrollController: itemScrollController,
              title: 'Skills',
            ),
            MenuButton(
              index: 3,
              itemScrollController: itemScrollController,
              title: 'Education',
            ),
            MenuButton(
              index: 4,
              itemScrollController: itemScrollController,
              title: 'Projects',
            ),
            const MenuTitle(
              title: 'Contact Info',
            ),
            ContactCard(
              label: 'Email',
              assetName: 'email',
              info: AppText.email,
              onTap: () {
                Uri uri = Uri.parse('mailto:${AppText.email}');
                launchUrl(uri);
              },
            ),
            ContactCard(
              label: 'Phone',
              assetName: 'call',
              info: AppText.phone,
              onTap: () {
                Navigator.pop(context);
                Uri uri = Uri.parse("tel://+91${AppText.phone}");
                launchUrl(uri);
              },
            ),
            ContactCard(
              label: 'Address',
              assetName: 'location',
              info: AppText.location,
            ),
            const MenuTitle(
              title: 'Social',
            ),
            SocialCard(
              onTap: () {
                Uri uri =
                    Uri.parse('https://https://wa.me/91${AppText.phone}/');
                launchUrl(uri);
              },
              label: 'Whatsapp',
              assetName: 'whatsapp',
            ),
            SocialCard(
              onTap: () {
                Uri uri = Uri.parse(
                    'https://www.linkedin.com/in/${AppText.linkedin}/');
                launchUrl(uri);
              },
              label: 'Linkedin',
              assetName: 'linkedin',
            ),
            SocialCard(
              onTap: () {
                Uri uri = Uri.parse('https://https://github.com//');
                launchUrl(uri);
              },
              label: 'GitHub',
              assetName: 'github',
            ),
          ],
        ));
  }
}
