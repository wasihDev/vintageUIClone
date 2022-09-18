import 'package:flutter/material.dart';
import 'package:vintage_car_app/Screens/Splash.dart';
import 'package:vintage_car_app/inDeXStack.dart';

import 'Screens/DetailScreen/detail.dart';
import 'Screens/MainScreen/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/IndexStacking',
      routes: {
        '/IndexStacking': (context) => const IndexStacking(),
        '/mainScreen': (context) => const MainScreen(),
        '/DetailScreen': (context) => const DetailScreen(),
      },
    );
  }
}
