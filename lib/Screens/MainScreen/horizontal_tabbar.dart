import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalTabbar extends StatefulWidget {
  HorizontalTabbar({Key? key}) : super(key: key);

  @override
  State<HorizontalTabbar> createState() => _HorizontalTabbarState();
}

class _HorizontalTabbarState extends State<HorizontalTabbar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.25,
          ),
          child: Container(
            height: height / 25,
            width: width / 7,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 109, 93, 4),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Center(
              child: Text('Hot',
                  style: GoogleFonts.ibarraRealNova(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: height / 60,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: Text('American',
              style: GoogleFonts.ibarraRealNova(
                textStyle: TextStyle(
                    fontSize: height / 60, fontWeight: FontWeight.w700),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: Text('French',
              style: GoogleFonts.ibarraRealNova(
                textStyle: TextStyle(
                    fontSize: height / 60, fontWeight: FontWeight.w700),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: Text('Mexico',
              style: GoogleFonts.ibarraRealNova(
                textStyle: TextStyle(
                    fontSize: height / 60, fontWeight: FontWeight.w700),
              )),
        ),
      ],
    );
  }
}
