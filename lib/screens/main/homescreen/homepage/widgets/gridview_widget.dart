import 'package:exam/model/gridview_items.dart';
import 'package:exam/routes/approutes.dart';
import 'package:exam/screens/main/homescreen/detail_page/detail_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/const/constants.dart';

class GridViewWidgets extends StatefulWidget {
  final GridViewItems items;

  const GridViewWidgets({super.key, required this.items});

  @override
  State<GridViewWidgets> createState() => _GridViewWidgetsState();
}

class _GridViewWidgetsState extends State<GridViewWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, AppRoutes.menuPage);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(item: widget.items),
                      ),
                    );
                  },
                  child: Image.asset(
                    widget.items.images,
                  )),
              Positioned(
                top: 114,
                bottom: -79,
                right: 3,
                left: 120,
                child: SvgPicture.asset(
                  widget.items.featured_circle,
                ),
              ),
              Positioned(
                top: 25,
                bottom: 117,
                child: Stack(
                  children: [
                    SvgPicture.asset(AppIcon.restengle),
                    Positioned(
                      top: 5,
                      right: 11,
                      left: 5,
                      bottom: 5,
                      child: Text(
                        widget.items.offer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset(widget.items.starts),
          Text(widget.items.text),
          Row(
            children: [
              Text(
                widget.items.newSumma,
                style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.5,
                    color: AppColors.C_D40000),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.items.oldSumma,
                style: GoogleFonts.sen(color: AppColors.C_ACACAC),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.items.isLike = !widget.items.isLike;
                  });
                },
                child: Icon(
                  widget.items.isLike ? Icons.favorite_border : Icons.favorite,
                  color: widget.items.isLike ? Colors.grey : Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
