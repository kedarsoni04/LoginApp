import 'package:flutter/material.dart';
import 'package:login_project/gen/fonts.gen.dart';
import 'package:login_project/utils/constants/color_constant.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final bool? isObsecure;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.isObsecure,
    this.onChanged,
    this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isOff = false;

  @override
  void initState() {
    isOff = widget.isObsecure ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      style: const TextStyle(
        fontFamily: FontFamily.comfortaa,
        fontSize: 16,
        color: Colors.white,
      ),
      obscureText: isOff,
      decoration: InputDecoration(
        suffixIcon: Visibility(
          visible: widget.isObsecure != null,
          child: GestureDetector(
            onTap: () {
              isOff = !isOff;
              setState(() {});
            },
            child: Icon(
              !isOff ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontFamily: FontFamily.comfortaa,
          fontSize: 16,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 0.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.red, width: 0.0),
        ),
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: AppColors.loginFilledBGColor,
      ),
    );
  }
}
