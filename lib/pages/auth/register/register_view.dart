import 'package:flutter/material.dart';
import 'package:login_project/gen/fonts.gen.dart';
import 'package:login_project/utils/constants/color_constant.dart';
import 'package:login_project/utils/constants/method_constant.dart';
import 'package:login_project/widgets/bg_container.dart';
import 'package:login_project/widgets/custom_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isOff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              const BgContainer(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 80, left: 20, right: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: FontFamily.comfortaa,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    getHeight(27),
                    const CustomTextFormField(
                      hintText: "Full Name",
                    ),
                    getHeight(10),
                    const CustomTextFormField(
                      hintText: "Email Id",
                    ),
                    getHeight(10),
                    const CustomTextFormField(
                      hintText: "Phone Number",
                    ),
                    getHeight(10),
                    const CustomTextFormField(
                      hintText: "User Id",
                    ),
                    getHeight(10),
                    const CustomTextFormField(
                      hintText: "Password",
                      isObsecure: true,
                    ),
                    getHeight(10),
                    const CustomTextFormField(
                      hintText: "Confirm Password",
                      isObsecure: true,
                    ),
                    getHeight(20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontFamily: FontFamily.comfortaa,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor),
                          )),
                    ),
                    getHeight(20),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Have Account ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: FontFamily.comfortaa,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Login?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: FontFamily.comfortaa,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    getHeight(20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
    );
  }
}
