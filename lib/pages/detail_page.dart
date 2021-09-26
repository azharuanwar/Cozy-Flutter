// import 'package:cozy/theme.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, true);
                    },
                    child: Image.asset(
                      'assets/icon_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_wishlist_detail_page.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Kuretakeso Hott',
                              style: titleTextStyle,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '\$52',
                                style: priceTextStyle,
                                children: [
                                  TextSpan(
                                      text: ' / month',
                                      style: locationTextStyle)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/rate_star.png',
                          width: 108,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
