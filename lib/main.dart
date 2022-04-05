import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller= PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: PageView(

            // scrollDirection: Axis.vertical,
            controller: _controller,
            children: <Widget>[
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
        ),
      ),
    );
  }
}

