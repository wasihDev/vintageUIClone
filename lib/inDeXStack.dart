import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vintage_car_app/Screens/DetailScreen/detail.dart';
import 'package:vintage_car_app/Screens/MainScreen/mainScreen.dart';
import 'package:vintage_car_app/Screens/verticle_TabBar_screen/invoice_screen.dart';
import 'package:vintage_car_app/Screens/verticle_TabBar_screen/myProfile.dart';
import 'package:vintage_car_app/Screens/verticle_TabBar_screen/notifi_screen.dart';

class IndexStacking extends StatefulWidget {
  const IndexStacking({Key? key}) : super(key: key);

  @override
  State<IndexStacking> createState() => _IndexStackingState();
}

class _IndexStackingState extends State<IndexStacking> {
  int indexs = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          containers(),
          sideBar(context),
        ],
      ),
    );
  }

  Widget containers() {
    return Expanded(
        child: IndexedStack(
      index: indexs,
      children: const [MainScreen(), Invoice(), Notifications(), MyProfile()],
    ));
  }

  Widget sideBar(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: height / 15),
        Stack(clipBehavior: Clip.none, children: [
          Container(
              width: width / 7,
              height: height / 1.1,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 231, 231, 172),
                  Color.fromARGB(255, 241, 241, 199),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(0.75, 0))
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(width / 6.5),
                    bottomRight: Radius.circular(width / 6.5)),
                color: const Color.fromARGB(255, 236, 236, 169),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  Image.asset(
                    'assets/stuff/home.png',
                    scale: 0.8,
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Image.asset(
                    'assets/stuff/badge.png',
                    scale: 1,
                  ),
                  Flexible(
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      indexs = 0;
                                    });
                                  },
                                  child: Text('Home',
                                      style: GoogleFonts.cinzel(
                                        textStyle: TextStyle(
                                            fontSize: height / 60,
                                            fontWeight: indexs == 0
                                                ? FontWeight.w900
                                                : FontWeight.w700),
                                      ))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      indexs = 1;
                                    });
                                  },
                                  child: Text('Invoice',
                                      style: GoogleFonts.cinzel(
                                        textStyle: TextStyle(
                                            fontSize: height / 60,
                                            fontWeight: indexs == 1
                                                ? FontWeight.w900
                                                : FontWeight.w700),
                                      ))),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      indexs = 2;
                                    });
                                  },
                                  child: Text('Notification',
                                      style: GoogleFonts.cinzel(
                                        textStyle: TextStyle(
                                            fontSize: height / 60,
                                            fontWeight: indexs == 2
                                                ? FontWeight.w900
                                                : FontWeight.w700),
                                      ))),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      indexs = 3;
                                    });
                                  },
                                  child: Text('My Profile',
                                      style: GoogleFonts.cinzel(
                                        textStyle: TextStyle(
                                            fontSize: height / 60,
                                            fontWeight: indexs == 3
                                                ? FontWeight.w900
                                                : FontWeight.w700),
                                      )))
                            ])),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/stuff/cart.png',
                      scale: 1,
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                ],
              )),
          AnimatedPositioned(
            top: indexs == 0
                ? 535
                : indexs == 1
                    ? 444
                    : indexs == 2
                        ? 325
                        : indexs == 3
                            ? 184
                            : 0,
            left: 45,
            curve: Curves.easeInOutCirc,
            duration: const Duration(milliseconds: 800),
            child: Container(
                height: 80,
                width: 25,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 241, 241, 199),
                    Color.fromARGB(255, 231, 231, 172),
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(7.75, 0))
                  ],
                ),
                child: Row(
                  children: const [
                    Center(
                        child: Icon(Icons.circle,
                            size: 9, color: Color.fromARGB(255, 202, 136, 82))),
                  ],
                )),
          ),
        ]),
      ],
    );
  }
}
