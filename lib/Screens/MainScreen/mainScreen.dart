import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vintage_car_app/Screens/MainScreen/horizontal_tabbar.dart';
import 'package:vintage_car_app/Screens/car_widget.dart';

import 'vertical_tabbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController tabController;
  bool favorite = true;
  bool ontap = true;

  bool isvisible = false;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff77A489),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 15),

            //Vertical Tab BAR
            //const VerticaleTabBar(),
            // Main Logo Classic
            Image.asset(
              'assets/stuff/logo2.png',
              scale: 1.2,
            ),
            SizedBox(
              height: height / 100,
            ),
            // Horizaontal Tab Bar View
            HorizontalTabbar(),
            // Car List View
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height / 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text('Near You',
                        style: GoogleFonts.sairaCondensed(
                          textStyle: TextStyle(
                              fontSize: height / 40,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(height: height / 25),
                  const CarCardDecor(
                    image: 'assets/car/list2.png',
                    title: 'Bufori',
                    subtitle:
                        'Bufori is a brand of hand-biuld multifun \ninspriered by American 1930s Antique',
                  ),
                  SizedBox(height: height / 12),
                  const CarCardDecor(
                    image: 'assets/car/list1.png',
                    title: 'Thunderbrid',
                    subtitle:
                        'The find generation of the Ford \nThunderbrid os a two muilti converisble',
                  ),
                  Visibility(
                    visible: isvisible,
                    child: Column(
                      children: [
                        SizedBox(height: height / 10),
                        const CarCardDecor(
                          image: 'assets/car/list1.png',
                          title: 'Bufori',
                          subtitle:
                              'Bufori is a brand of hand-biuld multifun \ninspriered by American 1930s Antique',
                        ),
                        SizedBox(height: height / 10),
                        const CarCardDecor(
                          image: 'assets/car/list2.png',
                          title: '1950s Thunderbrid',
                          subtitle:
                              'The find generation of the Ford \nThunderbrid os a two muilti converisble',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height / 35),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                          height: height / 23,
                          width: width / 4,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 94, 18, 4),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: height / 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset('assets/car/carDetail.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



    // Padding(
    //           padding: const EdgeInsets.all(10.0),
    //           child: Align(
    //             alignment: Alignment.centerLeft,
    //             child: TabBar(
    //                 labelPadding: const EdgeInsets.only(left: 10),
    //                 controller: tabController,
    //                 tabs: const [
    //                   Text('Home'),
    //                   Text('Invoice'),
    //                   Text('Notification'),
    //                   Text('My Profile'),
    //                 ]),
    //           ),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.only(left: 20),
    //           width: double.maxFinite,
    //           height: 300,
    //           child: TabBarView(controller: tabController, children: const [
    //             Text('awais'),
    //             Text('khan'),
    //             Text('facebok'),
    //             Text('whatsapp'),
    //           ]),
    //         ),