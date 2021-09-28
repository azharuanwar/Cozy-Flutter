import 'package:flutter/material.dart';

class RatingRate extends StatelessWidget {
  // const RatingRate({ Key? key }) : super(key: key);
  final int? index;
  final int? rating;

  RatingRate(this.index, this.rating);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index! <= rating! ? 'assets/icon_star_1.png' : 'assets/icon_star_2.png',
      width: 20,
    );
  }
}
