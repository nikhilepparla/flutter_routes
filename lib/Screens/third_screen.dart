import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<ThirdScreen> {
  String url = 'https://jsonplaceholder.typicode.com/users';
  var postJson = [];
  void feetchdata() async {
    try {
      final response = await get(
        Uri.parse(url),
      );
      final jsondata = jsonDecode(response.body) as List;

      print(response.body);
      setState(() {
        postJson = jsondata;
      });
    } catch (e) {
      print('error');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: postJson.length,
      itemBuilder: (context, i) {
        final post = postJson[i];
        return Text('Id =${post['id']}\n Email =${post['email']}\n\n');
      },
    ));
  }
}
