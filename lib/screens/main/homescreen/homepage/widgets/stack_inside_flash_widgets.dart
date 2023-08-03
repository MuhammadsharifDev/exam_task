import 'package:exam/core/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StackFlashSaleInside extends StatelessWidget {
  final String flashName;
  final String view;
  const StackFlashSaleInside({super.key,required this.flashName,required this.view});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.flash_sale),
        Positioned(
          top: 25,
          right: 202,
          left: 7,
          bottom: 62,
          child: Text(flashName,
            style: GoogleFonts.workSans(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 24),
          ),
        ),
        Positioned(
          top: 55,
          left: 7,
          bottom: 43,
          child: Text(view,
            style: GoogleFonts.workSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffEAA92A)),
          ),
        ),
        Positioned(
            top: 99,
            left: 5,
            bottom: 14,
            child:Row(
              children: [
                SvgPicture.asset('assets/icon_image/line.svg'),
                const SizedBox(width: 10,),
                SvgPicture.asset('assets/icon_image/line.svg'),
                const SizedBox(width: 10,),
                SvgPicture.asset('assets/icon_image/line.svg'),
                const SizedBox(width: 10,),
                SvgPicture.asset('assets/icon_image/line.svg'),
                const SizedBox(width: 10,),
                SvgPicture.asset('assets/icon_image/line.svg'),
              ],
            )
        ),
      ],
    );
  }
}
