import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  // const CityCard({Key? key}) : super(key: key);

  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
        width: 120,
        height: 150,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Image.asset(
              city.imgUrl!,
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name!,
              style: namePlaceTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
