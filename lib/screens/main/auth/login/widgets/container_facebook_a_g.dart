


import 'package:exam/core/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerFAG{
  static Container decoration({required String icon, required String name}){
    return  Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.C_979797),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(icon,),
            const SizedBox(width: 10,),
             Text(name,style: const TextStyle(fontSize: 15,fontWeight:FontWeight.w500,color: AppColors.C_979797,),),
          ],
        ),
      ),
    );
  }
}