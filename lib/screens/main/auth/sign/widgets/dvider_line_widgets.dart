


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DviderPage{

  static Row insideDvider({required Color color, String? text}){
    return  Row(
      children: [
        Expanded(
          child: Divider(
            color:color,
          ),
        ),
        const SizedBox(width: 5,),
        Text(
          text!,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 5,),
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

}