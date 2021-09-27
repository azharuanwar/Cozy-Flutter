import 'package:cozy/pages/home_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  // const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_404.png',
              width: 300,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going?',
              style: titleTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: fontNormal.copyWith(fontSize: 16, color: greyColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 210,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: purpleColor),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Back to Home',
                  style: fontNormal.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
