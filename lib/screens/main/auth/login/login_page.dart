
import 'package:exam/routes/approutes.dart';
import 'package:exam/screens/main/auth/sign/widgets/inputdecoration_widget.dart';
import 'package:exam/screens/main/auth/sign/widgets/sign_login_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/const/constants.dart';
import 'widgets/container_facebook_a_g.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailOrUsername=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 42,right: 42),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 77,),
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
                        const SizedBox(height: 18,),
                        ContainerFAG.decoration(icon: AppIcon.facebook_logo, name: 'Continue with Facebook'),
                        const SizedBox(height: 10,),
                        ContainerFAG.decoration(icon: AppIcon.apple_icon, name: 'Continue with Apple'),
                        const SizedBox(height: 10,),
                        ContainerFAG.decoration(icon: AppIcon.google_logo, name: 'Continue with Google'),
                        const SizedBox(height: 27,),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'or',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 28,),
                        const Text('Email address or username',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.C_272727),),
                        const SizedBox(height:10,),
                        TextFormField(
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Emailni kiriting";
                            }
                          } ,
                      controller: emailOrUsername,
                          decoration: LoginTexFieldWidgets.decoration(hintext: 'Email address or Username'),
                        ),
                        const SizedBox(height: 25,),
                        const Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.C_272727),),
                        const SizedBox(height: 10,),
                        TextFormField(
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Passwordni kiriitng";
                            }
                          },
                          controller: passwordController,
                          decoration: LoginTexFieldWidgets.decoration(hintext: 'Password'),
                        ),
                        const SizedBox(height: 12,),
                        TextButton(
                            onPressed: (){

                            },
                            child: const Text('Forgot Password? ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.C_979797),)),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                          if(_formkey.currentState!.validate()){
                            if(emailOrUsername.text.isNotEmpty && passwordController.text.isNotEmpty){
                              LoginUp(context);
                            }
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Ma'lumotlaringizni to'ldiring",style: GoogleFonts.workSans(fontSize: 15),),),);
                          }
                          },
                          child: SignLoginBottom.item(title: 'Log in'),
                        ),
                        const SizedBox(height: 18,),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Not a member?',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: AppColors.C_272727),),
                            const SizedBox(width: 5,),
                            TextButton(onPressed: (){
                              Navigator.pushReplacementNamed(context, AppRoutes.signUp
                              );

                            }, child: const Text('Create an accaunt',style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.C_FF7A00,
                            ),))
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
  void LoginUp(context)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setBool("isSignUp", true);

    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homePage, (route) => false);
  }
}
