// import 'package:cozy/theme.dart';
import 'package:cozy/models/facilities.dart';
import 'package:cozy/models/photos_models.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/pages/book_cozy.dart';
import 'package:cozy/pages/error_page.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/main_facilities.dart';
import 'package:cozy/widget/photos_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);
  lauchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw (url);
    }
  }

  final Space space;
  DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              space.imgUrl!,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(space),
                        ),
                      );
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
              // padding: EdgeInsets.symmetric(horizontal: 24),
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 218,
                                  child: Text(
                                    '${space.name}',
                                    style: titleTextStyle,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '\$${space.price}',
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
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star_1.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_star_1.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_star_1.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_star_1.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_star_1.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Main Facilities',
                              style: fontNormal.copyWith(fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainFacilities(
                                  Facilities('Kitchen', 'assets/icon_bar.png',
                                      space.numberOfKitchens),
                                ),
                                MainFacilities(
                                  Facilities('Bedroom', 'assets/icon_bed.png',
                                      space.numberOfBedrooms),
                                ),
                                MainFacilities(
                                  Facilities(
                                      'Lemari',
                                      'assets/icon_cupboard.png',
                                      space.numberOfCupboards),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Photos',
                                  style: fontNormal.copyWith(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Photos(
                                        PhotosModels(
                                            'assets/photo_highlight_1.png'),
                                      ),
                                      Photos(
                                        PhotosModels(
                                            'assets/photo_highlight_2.png'),
                                      ),
                                      Photos(
                                        PhotosModels(
                                            'assets/photo_highlight_3.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location',
                                  style: fontNormal.copyWith(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${space.address}',
                                      style: fontNormal.copyWith(
                                          fontSize: 14, color: greyColor),
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launch('${space.mapUrl}');
                                      },
                                      child: Image.asset(
                                        'assets/icon_pin.png',
                                        width: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            //* BUTTON
                            Container(
                              height: 50,
                              width:
                                  MediaQuery.of(context).size.width - (2 * 24),
                              // color: purpleColor,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: purpleColor,
                              ),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ErrorPage()),
                                    );
                                  },
                                  child: Text(
                                    'Book Now',
                                    style: fontNormal.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: whiteColor),
                                  )),
                            ),
                          ],
                        ),
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
