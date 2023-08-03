import 'package:exam/core/const/constants.dart';
import 'package:exam/routes/approutes.dart';
import 'package:exam/screens/main/auth/login/login_page.dart';
import 'package:exam/screens/main/auth/sign/widgets/dvider_line_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/inputdecoration_widget.dart';
import 'widgets/sign_login_bottom.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 42, right: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 77,
                  ),
                  SizedBox(
                    height: 87,
                    width: 294,
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcon.logo_p),
                        const Text(
                          'Clothe',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              color: AppColors.C_000000),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.C_979797),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppIcon.facebook_logo),
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(AppImages.apple_logo)),
                          SvgPicture.asset(AppIcon.google_logo),
                          const Text(
                            'Continue with social media',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.C_979797),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  DviderPage.insideDvider(color: Colors.black, text: 'or'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Full name',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.C_272727),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Ma'lumotlaringizni to'ldiring";
                      }
                    },
                    controller: nameController,
                    decoration:
                        LoginTexFieldWidgets.decoration(hintext: 'Full name'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Email address or username',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColors.C_272727),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email topilmadi';
                        }
                      },
                      controller: emailController,
                      decoration:
                          LoginTexFieldWidgets.decoration(hintext: 'Email')),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColors.C_272727),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Parolni kiriting ';
                        }
                      },
                      controller: passwordController,
                      decoration:
                          LoginTexFieldWidgets.decoration(hintext: 'Password')),
                  const SizedBox(
                    height: 51,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        if (nameController.text.isNotEmpty &&
                            emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                        saveSignUp(context);
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Ma'lumot to'liq emas",style: TextStyle(fontSize: 20,color: Colors.red),),
                              duration: Duration(seconds: 3),
                            ),
                        );
                      }
                    },
                    child: SignLoginBottom.item(title: 'Sign Up'),
                  ),
                  const SizedBox(
                    height: 27.5,
                  ),
                  DviderPage.insideDvider(color: Colors.black, text: ''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an accaunt?',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: AppColors.C_272727),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.C_FF7A00,
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void saveSignUp(context)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setBool("isSignUp", true);

    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homePage, (route) => false);
  }
}
