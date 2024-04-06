import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectContainer extends StatelessWidget {

  final String imageName;
  final String link;
  const ProjectContainer(
      {super.key,
      required this.imageName,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Uri uri = Uri.parse(link.toString());
        launchUrl(uri);
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imageName,
            fit: BoxFit.fill,
          )),
    );
  }
}
