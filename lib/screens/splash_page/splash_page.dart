import 'package:exam/core/const/constants.dart';
import 'package:exam/routes/approutes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  bool isSign=false;
  Future<bool> isSignUp()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    isSign=pref.getBool('isSignUp')?? false;
    return pref.getBool('isSignUp')?? false;
  }
  @override
  void initState(){
    super.initState();
    isSignUp();
   Future.delayed(const Duration(seconds: 3)).then((value) {
     isSign?Navigator.pushReplacementNamed(context, AppRoutes.homePage):Navigator.pushReplacementNamed(context, AppRoutes.signUp);
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.splash,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
