import 'package:drawer/src/drawer.dart';
import 'package:drawer/src/password.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: SplashScreen(seconds: 3,
      navigateAfterSeconds: new DrawerMenu(),
      title: new Text('Welcome'),
      image: new Image.asset('name'),
      backgroundColor: Colors.blue,
      photoSize: 180.0,),

    );

  }

}

