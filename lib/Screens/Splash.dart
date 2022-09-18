import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff77A489),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: Image.asset('assets/stuff/logo2.png')),
          Image.asset('assets/car/car2.png'),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 109, 93, 4),
            ),
            child: IconButton(
                color: Colors.black12,
                onPressed: () {
                  Navigator.pushNamed(context, '/mainScreen');
                },
                icon: const Icon(Icons.forward, color: Colors.white70)),
          )
        ],
      ),
    );
  }
}
