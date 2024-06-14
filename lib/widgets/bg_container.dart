import 'package:flutter/material.dart';
import 'package:login_project/utils/constants/color_constant.dart';

class BgContainer extends StatelessWidget {
  const BgContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -150,
      top: -150,
      child: Container(
        height: 435,
        width: 435,
        decoration: BoxDecoration(
            color: AppColors.loginCircleColor.withOpacity(.1),
            shape: BoxShape.circle),
      ),
    );
  }
}
