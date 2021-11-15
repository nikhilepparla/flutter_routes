import 'package:flutter/material.dart';
import 'package:learning_codepur/Routes/routes.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Form(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          TextField(),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              Navigator.pushNamed(context, MoveTo.third);
            },
          ),
          Expanded(
            child: Image.asset(
              'assets/tt.jpg',
            ),
          )
        ],
      ),
    ));
  }
}
