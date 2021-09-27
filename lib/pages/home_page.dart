import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/provider/space_providers.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/city_card.dart';
import 'package:cozy/widget/customNavBar.dart';
import 'package:cozy/widget/space_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpaces();

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
              FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data;
                    return Column(
                      children: data.map((item) => SpaceCard(item)).toList(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  );
                },
              ),
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
                    Spacer(),
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
                    Spacer(),
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

    Widget customNavBar() {
      return Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomNavBar(
              imgUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            CustomNavBar(
              imgUrl: 'assets/icon_message.png',
              isActive: false,
            ),
            CustomNavBar(
              imgUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            CustomNavBar(
              imgUrl: 'assets/icon_wishlist.png',
              isActive: false,
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
          tipsAndGuidance(),
        ],
      ),
      floatingActionButton: customNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
