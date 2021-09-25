import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/city_card.dart';
import 'package:cozy/widget/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 24, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Now',
                style: titleTextStyle,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Mencari kosan yang cozy',
                style: subTitleTextStyle,
              ),
            ],
          ),
        ),
      );
    }

    Widget popularCities() {
      return Container(
        padding: EdgeInsets.only(left: defaultMargin, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Cities',
              style: categoryTextStyle,
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityCard(City(1, 'Jakarta', 'assets/image_popular_1.png')),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(2, 'Bandung', 'assets/image_popular_2.png')),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(3, 'Bandung', 'assets/image_popular_3.png')),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget recommenSpace() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recomended Space',
                style: categoryTextStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  SpaceCard(
                    Space(
                      1,
                      'Kuretakeso Hott',
                      52,
                      'assets/image_space_1.png',
                      'Bandung, Germany',
                    ),
                  ),
                  SpaceCard(
                    Space(
                      1,
                      'Roemah Nenek',
                      52,
                      'assets/image_space_2.png',
                      'Seaatle, Germany',
                    ),
                  ),
                  SpaceCard(
                    Space(
                      1,
                      'Kuretakeso Hott',
                      52,
                      'assets/image_space_3.png',
                      'Bandung, Germany',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget tipsAndGuidance() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips & Guidance',
              style: categoryTextStyle,
            ),
            SizedBox(height: 16),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset('assets/image_tips_1.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'City Guidlines',
                                style: namePlaceTextStyle,
                              ),
                              Text(
                                'Updated 20 Apr',
                                style: locationTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset('assets/image_tips_2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jakarta Fairship',
                                style: namePlaceTextStyle,
                              ),
                              Text(
                                'Updated 20 Apr',
                                style: locationTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          popularCities(),
          recommenSpace(),
          tipsAndGuidance()
        ],
      ),
    );
  }
}
