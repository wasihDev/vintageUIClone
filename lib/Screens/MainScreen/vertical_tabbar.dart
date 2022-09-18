import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticaleTabBar extends StatelessWidget {
  const VerticaleTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        width: width / 7,
        height: height / 1.1,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 231, 231, 172),
            Color.fromARGB(255, 241, 241, 199),
          ], begin: Alignment.topLeft, end: Alignment.topRight),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 8, offset: Offset(0.75, 0))
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
                        Text('Home',
                            style: GoogleFonts.cinzel(
                              textStyle: TextStyle(
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.w900),
                            )),
                        Text('Invoice',
                            style: GoogleFonts.cinzel(
                              textStyle: TextStyle(
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.w700),
                            )),
                        Text('Notification',
                            style: GoogleFonts.cinzel(
                              textStyle: TextStyle(
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.w700),
                            )),
                        Text('My Profile',
                            style: GoogleFonts.cinzel(
                              textStyle: TextStyle(
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.w700),
                            ))
                      ])),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/DetailScreen');
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
        ));
  }
}
