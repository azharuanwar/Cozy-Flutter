import 'package:cozy/models/space.dart';
import 'package:cozy/pages/detail_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpaceCard extends StatelessWidget {
  // const SpaceCard({Key? key}) : super(key: key);
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 130,
                height: 110,
                child: Stack(
                  children: [
                    Image.network(
                      space.imgUrl!,
                      width: 130,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_star.png',
                                width: 18,
                                height: 18,
                              ),
                              Text(
                                '4/5',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    style: namePlaceTextStyle.copyWith(
                        fontWeight: FontWeight.w500),
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
                    '${space.country}',
                    style: locationTextStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
