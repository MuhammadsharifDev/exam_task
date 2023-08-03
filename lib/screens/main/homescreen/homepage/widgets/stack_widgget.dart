import 'package:exam/core/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackWidget extends StatelessWidget {
  final hintex;
   StackWidget({super.key,required this.hintex});
 TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children:[
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppIcon.drawer_logo),
                const Text('LuxOutlet',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                SvgPicture.asset(AppIcon.notification),
              ],
            ),
          ),
        ),
        Positioned(
          top: 90,
          left: 20,
          right: 20,
          child: Card(
            elevation: 5,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(35),
               side: BorderSide.none,
             ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 15),
              child: TextField(
                controller: searchController,
                decoration:InputDecoration(
                  icon:const Icon(Icons.search),
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                 hintText: hintex,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
