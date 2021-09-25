import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  // const SpaceCard({Key? key}) : super(key: key);
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 130,
              height: 110,
              child: Image.asset(
                space.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name!,
                  style:
                      namePlaceTextStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                RichText(
                    text: TextSpan(
                  text: '\$${space.price}',
                  style: priceTextStyle,
                  children: [
                    TextSpan(text: '/ month', style: locationTextStyle)
                  ],
                )),
                SizedBox(
                  height: 16,
                ),
                Text(
                  space.location!,
                  style: locationTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
