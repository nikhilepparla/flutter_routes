import 'package:flutter/material.dart';
import 'package:learning_codepur/Routes/routes.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MoveTo.initial,
      routes: MyRoutes.routes,

    );
  }
}
