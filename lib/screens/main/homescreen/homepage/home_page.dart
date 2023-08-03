import 'package:exam/core/const/constants.dart';
import 'package:exam/model/gridview_items.dart';
import 'package:exam/model/listview_caterogies.dart';
import 'package:exam/screens/main/homescreen/homepage/widgets/gridview_widget.dart';
import 'package:exam/screens/main/homescreen/homepage/widgets/stack_inside_flash_widgets.dart';
import 'package:exam/screens/main/homescreen/homepage/widgets/stack_widgget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackWidget(hintex: 'What are you looking for?'),
            const SizedBox(
              height: 15,
            ), //Widgets
            const Padding(
                padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                child: StackFlashSaleInside(
                  flashName: 'Flash Sale',
                  view: 'View more >',
                )),
            const SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All >',
                        style: GoogleFonts.workSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.C_ACACAC),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 88,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Caterogies.items.length,
                  itemBuilder: (context, index) => Container(
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                      child: Stack(
                        children: [
                          Image.asset(Caterogies.items[index].image),
                          Positioned(
                            top: 35,
                            left: 10,
                            child: Text(
                              Caterogies.items[index].text,
                              style: GoogleFonts.workSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Featured',
                style: GoogleFonts.workSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.C_000000),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 600,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5 / 3.3,
                ),
                itemCount: GridViewItems.items.length,
                itemBuilder: (context, index) => Container(
                  child: GridViewWidgets(items: GridViewItems.items[index]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Image.asset(AppImages.know_more),
            ),
        ],
        ),
      ),
    );
  }
}
