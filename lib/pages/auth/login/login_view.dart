import 'package:flutter/material.dart';
import 'package:login_project/gen/assets.gen.dart';
import 'package:login_project/gen/fonts.gen.dart';
import 'package:login_project/pages/auth/register/register_view.dart';
import 'package:login_project/utils/constants/color_constant.dart';
import 'package:login_project/utils/constants/method_constant.dart';
import 'package:login_project/widgets/bg_container.dart';
import 'package:login_project/widgets/custom_text_form_field.dart';
import 'package:login_project/widgets/or_divider.dart';
import 'package:login_project/widgets/social_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isOff = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: FontFamily.comfortaa,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    getHeight(27),
                    const Text(
                      "Welcome  back!  You  have  been  missed!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: FontFamily.comfortaa,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    getHeight(10),
                    CustomTextFormField(
                      controller: userNameController,
                      hintText: "User Id",
                    ),
                    getHeight(20),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      isObsecure: true,
                    ),
                    getHeight(20),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: FontFamily.comfortaa,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    getHeight(20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            print(
                                "user id is ${userNameController.text} & Password is ${passwordController.text}");
                          },
                          child: Text(
                            "Login",
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: FontFamily.comfortaa,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    getHeight(20),
                    const OrDividerWidget(),
                    getHeight(20),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or Continue With",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: FontFamily.comfortaa,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    getHeight(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButtons(
                          iconPath: Assets.images.appleLogo,
                        ),
                        SocialButtons(
                          iconPath: Assets.images.facebookLogo,
                        ),
                        SocialButtons(
                          iconPath: Assets.images.googleLogo,
                        )
                      ],
                    )
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
