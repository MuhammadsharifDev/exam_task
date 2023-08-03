







import 'package:exam/core/const/constants.dart';
import 'package:flutter/material.dart';

class SignLoginBottom{
  static  Container item({required String title}){
    return Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: AppColors.C_FFB800,
        ),
        child:  Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.white),
            )),
      );
  }
}