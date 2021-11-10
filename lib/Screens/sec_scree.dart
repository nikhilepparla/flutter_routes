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
        body: Column(
      children: <Widget>[
        Container(height: height*0.3,
          color: Colors.blue,
        ),
        Container(
         // color: Colors.blue,
          child: ElevatedButton(
            child: const Text('enter'),
            onPressed: () {
              Navigator.pushNamed(context, MoveTo.third);
            },
          ),
        ),
      ],
    ));
  }
}
