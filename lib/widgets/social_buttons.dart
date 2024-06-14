import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButtons extends StatelessWidget {
  final String iconPath;
  const SocialButtons({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      height: 60,
      width: 60,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}
