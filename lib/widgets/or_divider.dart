import 'package:flutter/material.dart';
import 'package:login_project/gen/fonts.gen.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .38,
          child: const Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white), shape: BoxShape.circle),
          child: const Text(
            "Or",
            style: TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.comfortaa,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .38,
          child: const Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
