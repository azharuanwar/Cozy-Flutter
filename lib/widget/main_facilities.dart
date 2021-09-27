import 'package:cozy/models/facilities.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class MainFacilities extends StatelessWidget {
  // const MainFacilities({Key? key}) : super(key: key);
  final Facilities facilities;
  MainFacilities(this.facilities);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            facilities.imgUrl!,
            width: 32,
          ),
          SizedBox(
            height: 8,
          ),
          RichText(
            text: TextSpan(
                text: '${facilities.total}',
                style: fontNormal.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: purpleColor,
                ),
                children: [
                  TextSpan(
                    text: ' ${facilities.name}',
                    style: fontNormal.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w200),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
