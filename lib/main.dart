import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset('assets/twitter.jpg'),
              ),
              Expanded(
                child: Image.asset('assets/google.jpg'),
              ),
              Expanded(
                child: Image.asset('assets/practice.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
