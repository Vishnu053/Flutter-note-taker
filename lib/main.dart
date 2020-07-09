import 'package:common/home.dart';
import 'package:common/router.dart';
import 'package:common/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      title: 'Common',
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.black12,
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
