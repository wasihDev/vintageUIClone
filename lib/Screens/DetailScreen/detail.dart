import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xff77A489),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(children: [
              Positioned(
                  top: height / 3.0,
                  right: 0,
                  left: 0,
                  child: Image.asset('assets/stuff/RectangleCopy.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height / 20),
                  Center(
                    child: Stack(clipBehavior: Clip.none, children: [
                      Positioned(
                        child: Column(
                          children: [
                            SizedBox(
                              width: width / 20,
                            ),
                            Container(
                              height: height * 0.8,
                              width: width * 0.859,
                              decoration: const BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 14,
                                        offset: Offset(0, 0.75))
                                  ],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                  color: Color.fromARGB(255, 240, 233, 173)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 10,
                          top: 10,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/mainScreen');
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(Icons.arrow_back_ios_new,
                                  color: Colors.black),
                            ),
                          )),
                      Positioned(
                          bottom: height * .69,
                          left: 0,
                          right: 0,
                          child: Image.asset('assets/stuff/logo2.png')),
                      Positioned(
                          right: 30,
                          top: 60,
                          child: Image.asset('assets/stuff/badgeLarge.png')),
                      Positioned(
                          top: 80,
                          right: 1,
                          child: Image.asset(
                            'assets/car/car2.png',
                            scale: 1,
                          )),
                      Positioned(
                          top: 370,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Foard XY Falcon GT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: height / 30)),
                              SizedBox(
                                height: height / 80,
                              ),
                              Text(
                                  'THE FORD MOTOR COMPANY FALCON XY GT IS A SPORTS SEDAM \nRSED ON THE FORD FALSON XY. RELEASED IN 1970 BY FORDS \nAUSTRALIA WITH THE GITHO PHASE III RELEASED IN 1971 \nSOME 1557 UNITS WERE PRODUCED FROM SEPTEMER 1970 TO \nDECEMBER 1971',
                                  style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: height / 100))),
                            ],
                          )),
                      Positioned(
                          bottom: 30,
                          left: 15,
                          child:
                              Image.asset('assets/car/car3.png', scale: 0.9)),
                      Positioned(
                          bottom: -40,
                          right: 20,
                          child: Image.asset('assets/stuff/certificate.png',
                              scale: 1.2)),
                    ]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height / 100,
                      ),
                      Text('SCORE',
                          style: GoogleFonts.cinzel(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white))),
                      Image.asset('assets/stuff/Group 1.png'),
                      SizedBox(
                        height: height / 100,
                      ),
                      Text(
                        'THE FORD MOTTOR COMPANY FALCON XY GT IS A SPORTS SEDAM \nRASED ON THE FORD FALCON XY',
                        style: TextStyle(
                            color: Colors.white, fontSize: height / 100),
                      ),
                      const SizedBox(
                        height: 80,
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
