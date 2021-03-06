import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  // const CustomNavBar({Key? key}) : super(key: key);
  final String? imgUrl;
  final bool? isActive;

  CustomNavBar({
    this.imgUrl,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imgUrl!,
          width: 26,
        ),
        Spacer(),
        isActive!
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
