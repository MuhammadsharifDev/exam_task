import 'package:exam/core/const/constants.dart';

class GridViewItems {
  String images;
  String starts;
  String text;
  String newSumma;
  String oldSumma;
  bool isLike;
  String offer;
  String favourite;
  String featured_circle;
  String review;
  String itemDetails;
  String comment;
  GridViewItems(
      {required this.featured_circle,
        required this.comment,
        required this.itemDetails,
      required this.isLike,
      required this.favourite,
      required this.images,
      required this.starts,
      required this.text,
      required this.newSumma,
      required this.oldSumma,
      required this.offer,
      required this.review,
      });

  static List<GridViewItems> items = [
    GridViewItems(
        starts: AppIcon.starts,
        text: 'DKNY t-shirt - colour\nblock front logo',
        newSumma: '19\$',
        oldSumma: '69\$',
        offer: '-60%',
        images: AppImages.Featured_1,
        favourite: AppIcon.like_svg,
        isLike: true,
        featured_circle: AppIcon.featured_circle,
        review: '126  reviews',
        itemDetails:'Light blue jacket by Polo Ralph Lauren. Button neck with\nspread collar. Zip placket. Embroidered logo to chest and \ncuff Side pockets/ Elasticated hem.\nRegular fit. True to size. Model wears: UK S/ EU S/ US',
        comment: "Really cool and stylish light weight jacket, has 3 inside\npockets and feels strong. The fitting is good and not too\nloose, quite warm but definitely not for winter."),
    GridViewItems(
        starts: AppIcon.starts,
        text: 'Tommy Hilfiger padded\njackets - black with...',
        newSumma: '55\$',
        oldSumma: '110\$',
        offer: '-50%',
        images: AppImages.Featured_2,
        favourite: AppIcon.like_svg,
        isLike: true,
        featured_circle: AppIcon.featured_circle, review: '155 reviews',
        itemDetails: 'It si very beautifel and fited\nsuch not cold and  not hot. Embroidered logo to chest and \ncuff Side pockets/ Elasticated hem.\nRegular fit. True to size. Model wears: Uz/Ru/Eng',
        comment: "It just good such kind of Polo\nis any item worn on the body.. underwear for private parts\nclothing is made of fabrics or textiles."),
    GridViewItems(
        starts: AppIcon.starts,
        text: 'Midi dress with buttons\nshort sleeve - pink',
        newSumma: '35\$',
        oldSumma: '89\$',
        offer: '-60%',
        images: AppImages.Featured_3,
        favourite: AppIcon.like_svg,
        isLike: true,
        featured_circle: AppIcon.featured_circle, review: '120 reviews',
        itemDetails: 'I had bought and I am not  regret\nspread collar. Zip placket. Embroidered logo to chest and \ncuff Side pockets/ Elasticated hem.\nRegular fit. True to size. Model wears: Kr/Tur/Eng/Misr',
        comment: "Really cool and stylish light weight jacket, has 3 inside\npockets and feels strong. The fitting is good and not too\nloose, quite warm but definitely not for winter."),
    GridViewItems(
        starts: AppIcon.starts,
        text: 'Blazer dress with\nbuttons long sleeve..',
        newSumma: '59\$',
        oldSumma: '120\$',
        offer: '-50%',
        images: AppImages.Featured_4,
        favourite: AppIcon.like_svg,
        isLike: true,
        featured_circle: AppIcon.featured_circle, review: '95 reviews',
        itemDetails: 'Just Perfct and very nice cottonly\nspread collar. Zip placket. Embroidered logo to chest and \ncuff Side pockets/ Elasticated hem.\nRegular fit. True to size. Model wears: Ru/Uz/Portu/Ispan',
        comment: "Clothing also provides protection from ultraviolet radiation\nFashioned with pockets, belts, or loops, clothing may provide\nClothing also may be used to communicate social status\now power consumption and flexible electronic substrates"),
  ];
}

class Featured{
  dynamic featured;
  Featured({required this.featured});
}