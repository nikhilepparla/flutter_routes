import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_emailid(), _password(), Login()],
      ),
    ));
  }

  Widget _emailid() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.person_add_alt), hintText: 'Email'),
    );
  }

  Widget _password() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          hintText: 'Password', icon: Icon(Icons.security)),
    );
  }

  Widget Login() {
    return ElevatedButton(onPressed: () {}, child: const Text('Login'));
  }
}
