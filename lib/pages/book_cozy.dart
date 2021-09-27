import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class BookCozy extends StatelessWidget {
  // const BookCozy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/profile.png',
              width: 150,
            ),
            SizedBox(
              height: 65,
            ),
            Text(
              'Amanda Shayna',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '12 : 30 minutes',
              style: fontNormal.copyWith(fontSize: 16, color: greyColor),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/btn_close.png',
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
