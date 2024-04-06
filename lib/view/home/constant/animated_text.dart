import 'package:portfolio/constant/my_text_style.dart';
import 'package:portfolio/constant/responsive.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  final double fontSize;
  final double width;
  const AnimatedText({super.key, required this.fontSize, required this.width});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;

  final List<String> _work = [
    'Pursuing BCA Student',
    'Flutter Developer',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animatedText();
  }

  void _animatedText() {
    if (_currentCharIndex < _work[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      _currentIndex = (_currentIndex + 1) % _work.length;
      _currentCharIndex = 0;
    }
    if (mounted) {
      setState(() {});
    }

    Future.delayed(const Duration(milliseconds: 200), () {
      _animatedText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.width(context, width: widget.width),
      child: Text(
        'I\'m a ${_work[_currentIndex].substring(0, _currentCharIndex)}',
        style: MyTextStyle.ubuntuMedium(
            fontSize: Responsive.width(context, width: widget.fontSize),
            color: MyColors.white),
      ),
    );
  }
}
