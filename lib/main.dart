import 'package:cozy/pages/home_page.dart';
import 'package:cozy/pages/started_page.dart';
import 'package:cozy/provider/space_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(routes: {
        '/': (context) => StartedPage(),
        '/home-page': (context) => HomePage(),
      }),
    );
  }
}
