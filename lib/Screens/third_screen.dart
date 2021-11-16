import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  var postJson = [];
  var url = 'https://jsonplaceholder.typicode.com/users';
  fetchpostData() async {
    try {
      final resopnse =
          await post(Uri.parse(url), body: {"email": "e.alpha", "id": "11"});
      final jsonData = jsonDecode(resopnse.body);
      print(resopnse.body);
      setState(() {
        postJson = jsonData;
      });
    } catch (errorOcuuredd) {
      print(errorOcuuredd);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchpostData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     final post = postJson[index];
        //     return Text(
        //         'Username is ${post['username']}\n Email is ${post['email']}\n\n');
        //   },
        //   itemCount: postJson.length,
        // ),
        );
  }
}
