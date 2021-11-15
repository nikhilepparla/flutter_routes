import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

String url = 'https://jsonplaceholder.typicode.com/users';
void feetchdata() async {
  try {
    final response = await get(
      Uri.parse(url),
    );
    print(response.body);
  } catch (e) {
    print('error');
  }
}

class _FirstScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          height: 30,
          child: const ElevatedButton(
            onPressed: feetchdata,
            child: Text('press here'),
          ),
        ),
      ),
    );
  }
}
