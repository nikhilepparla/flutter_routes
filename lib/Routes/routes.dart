import 'dart:js';

import 'package:learning_codepur/Screens/first_screen.dart';
import 'package:learning_codepur/Screens/initial.dart';
import 'package:learning_codepur/Screens/sec_scree.dart';
import 'package:learning_codepur/Screens/third_screen.dart';

class MoveTo {
  static const initial = '/initail';
  static const first = '/first';
  static const second = '/sec';
  static const third = '/third';
}

class MyRoutes {
  static final routes = {
    MoveTo.initial:(context)=>const Initial(),
    MoveTo.first:(context)=>const FirstScreen(),
    MoveTo.second:(context)=>const SecondScreen(),
    MoveTo.third:(context)=>const ThirdScreen()
  };
}
