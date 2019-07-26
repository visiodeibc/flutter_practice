import 'package:flutter/material.dart';
import '1-columns_and_rows.dart';
import '2-standard,material-widget.dart';

void main() => runApp(StandardMaterialWidget());

class ColumnsandRows extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              pictureRow,
              Column(
                children: [ratings, iconList],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StandardMaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(child:buildImageColumn()),
      ),
    );
  }
}


