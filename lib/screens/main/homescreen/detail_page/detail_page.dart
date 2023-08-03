import 'package:exam/core/const/constants.dart';
import 'package:exam/model/gridview_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  final GridViewItems item;

  const DetailPage({super.key, required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLike = true;

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 415,
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: PageView(
                controller: _pageController,
                children: [
                  Image.asset(
                    widget.item.images,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.polo2,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.polo3,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, right: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AppIcon.starts),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.item.review,
                                  style: GoogleFonts.workSans(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.C_979797),
                                ),
                              ],
                            ),
                            Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'In Stock',
                                  style: GoogleFonts.workSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.5,
                                      color: AppColors.C_03A600),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          widget.item.text,
                          style: GoogleFonts.workSans(
                              color: AppColors.C_464646,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.item.newSumma,
                              style: GoogleFonts.workSans(
                                  color: AppColors.C_464646,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.item.oldSumma,
                              style:
                                  GoogleFonts.workSans(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Colours',
                          style: GoogleFonts.workSans(
                              color: AppColors.C_979797,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 47,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                    width: 47,
                                    child: Image.asset(
                                      PoloBrands.colours[index].images,
                                    ),
                                  ),
                              separatorBuilder: (context, index) => const SizedBox(
                                    width: 15,
                                  ),
                              itemCount: PoloBrands.colours.length),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Size',
                          style: GoogleFonts.workSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.C_979797),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 47,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: AppColors.C_C6C4C4),
                                    ),
                                    width: 47,
                                    child: Center(
                                        child: Text(PoloBrands.sizes[index])),
                                  ),
                              separatorBuilder: (context, index) => const SizedBox(
                                    width: 15,
                                  ),
                              itemCount: PoloBrands.sizes.length),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 153,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item Details',
                          style: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_000000),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.item.itemDetails,
                          style: GoogleFonts.workSans(
                              color: Color(0xff868686),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                Container(
                  height: 224,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 18, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reviewrs',
                              style: GoogleFonts.workSans(
                                  color: AppColors.C_000000,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View All >',
                                  style: GoogleFonts.workSans(
                                      color: AppColors.C_ACACAC,
                                      fontSize: 10.5),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Leslie Alexander',
                          style: GoogleFonts.workSans(
                              fontSize: 11, color: AppColors.C_000000),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppIcon.starts),
                            Text(
                              'Jan 21, 2021',
                              style: GoogleFonts.workSans(
                                  color: AppColors.C_ACACAC, fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(widget.item.comment),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Comment',
                              style: GoogleFonts.workSans(
                                  color: AppColors.C_ACACAC, fontSize: 12),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isLike = !isLike;
                                  });
                                },
                                child: SvgPicture.asset(
                                  AppIcon.favourite_svg,
                                  color: isLike ? Colors.red : Colors.grey,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 295,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Related Products',
                          style: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_000000),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 235,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) => Container(
                              width: 145,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Image.asset(
                                        GridViewItems.items[index].images),
                                    Positioned(
                                        top: 120,
                                        left: 110,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                GridViewItems
                                                        .items[index].isLike =
                                                    !GridViewItems
                                                        .items[index].isLike;
                                              });
                                            },
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                GridViewItems
                                                        .items[index].isLike
                                                    ? Icons.favorite_border
                                                    : Icons.favorite,
                                                color: GridViewItems
                                                        .items[index].isLike
                                                    ? Colors.grey
                                                    : Colors.red,
                                              ),
                                            ))),
                                  ]),
                                  SvgPicture.asset(
                                      GridViewItems.items[index].starts),
                                  Text(GridViewItems.items[index].text),
                                  Text(
                                    PoloBrands.offers[index],
                                    style: GoogleFonts.workSans(
                                        color: AppColors.C_000000,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                              width: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 61,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                        Container(
                          height: 35,
                          width: 218,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.C_FFB800,
                          ),
                          child: Center(
                              child: Text(
                            'Add Cast',
                            style: GoogleFonts.workSans(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isLike = !isLike;
                              });
                            },
                            child: Icon(
                              isLike ? Icons.favorite_outline : Icons.favorite,
                              color: isLike ? Colors.grey : Colors.red,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PoloBrands {
  String images;

  PoloBrands({required this.images});

  static List<PoloBrands> colours = [
    PoloBrands(images: 'assets/png_images/polo4.png'),
    PoloBrands(images: 'assets/png_images/polo5.png'),
    PoloBrands(images: 'assets/png_images/polo6.png'),
    PoloBrands(images: 'assets/png_images/polo7.png'),
    PoloBrands(images: 'assets/png_images/polo8.png'),
    PoloBrands(images: 'assets/png_images/polo9.png'),
  ];

  static List<String> sizes = ['XXS', 'XS', 'S', 'M', 'L', 'XL'];
  static List<String> offers = ['55\$', '19\$', '59\$', '40\$'];
}
