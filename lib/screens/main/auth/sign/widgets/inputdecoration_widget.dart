


import 'package:flutter/material.dart';

class LoginTexFieldWidgets{
  static var isValidate=false;

   static InputDecoration decoration({required String hintext,}){
     return  InputDecoration(
       hintText: hintext,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(5),
       ),
     );
   }
}