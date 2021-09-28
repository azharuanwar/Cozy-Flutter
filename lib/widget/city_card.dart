import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  // const CityCard({Key? key}) : super(key: key);

  final Space city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Container(
          width: 120,
          height: 150,
          color: Color(0xffF6F7F8),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    city.imgUrl!,
                    width: 120,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                  city.rating! >= 4
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icon_star.png',
                                width: 22,
                                height: 22,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                city.city!,
                style: namePlaceTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
