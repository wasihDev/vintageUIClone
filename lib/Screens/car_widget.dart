import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCardDecor extends StatefulWidget {
  const CarCardDecor(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  @override
  State<CarCardDecor> createState() => _CarCardDecorState();
}

class _CarCardDecorState extends State<CarCardDecor> {
  bool favorite = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 60.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: width / 1.65,
            height: height / 5.8,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 95, 138, 112),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Color.fromARGB(255, 83, 124, 100),
                      blurRadius: 15.0,
                      offset: Offset(5, 8.75))
                ]),
          ),
          Positioned(
              bottom: 55,
              left: -25,
              child: Image.asset(
                widget.image,
                scale: 0.95,
              )),
          Positioned(
              top: height / 100,
              right: width / 60,
              child: Stack(children: [
                Image.asset('assets/stuff/Rectangle.png'),
                Positioned(
                  right: 7,
                  top: 3,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child: Icon(Icons.favorite,
                        size: 19,
                        color: favorite
                            ? const Color.fromARGB(255, 206, 206, 206)
                            : Colors.red),
                  ),
                )
              ])),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 60, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,
                    style: GoogleFonts.cinzel(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                Text(
                  widget.subtitle,
                  style: const TextStyle(fontSize: 9, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
