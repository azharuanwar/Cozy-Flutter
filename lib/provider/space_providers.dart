import 'dart:convert';
import 'package:cozy/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var url = Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces');
    var result = await http.get(url);

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces =
          data.map((element) => Space.fromJson(element)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
