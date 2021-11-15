import 'package:flutter/material.dart';
import 'package:learning_codepur/Routes/routes.dart';

class Initial extends StatelessWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Text('Welcome to initial page'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MoveTo.third);
              },
              child: const Text('Move to Next Pagaesss'))
        ],
      )),
    );
  }
}
