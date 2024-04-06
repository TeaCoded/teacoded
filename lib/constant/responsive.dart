import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const Responsive({super.key, required this.mobile, required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 650;
  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 650;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1024;
  static double height(BuildContext context, {required double height}) {
    return MediaQuery.sizeOf(context).height * height;
  }

  static double width(
    BuildContext context, {
    required double width,
  }) {
    return MediaQuery.sizeOf(context).width * width;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1024) {
        return desktop;
      } else if (constraints.maxWidth >= 650) {
        return desktop;
      } else {
        return mobile;
      }
    });
  }
}
