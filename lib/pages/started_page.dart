import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Find Cozy House\nto Stay and Happy',
                style: titleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: subTitleTextStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
                height: 50,
                // color: blackColor,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                  child: Text(
                    'Explore Now',
                    style: buttonTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Image.asset('assets/image_cozy.png')
            ],
          ),
        ),
      ),
    );
  }
}
