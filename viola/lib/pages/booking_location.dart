import 'package:flutter/material.dart';
import 'package:viola/pages/booking_drop.dart';

class BookingLocation extends StatefulWidget {
  const BookingLocation({Key? key}) : super(key: key);

  @override
  _BookingLocationState createState() => _BookingLocationState();
}

class _BookingLocationState extends State<BookingLocation> {
  late double deviceWidth;
  late double deviceHeight;
  Color contrast = const Color(0xFF604A7A);
  Color primary = const Color(0xFFCBC1DA);
  List<String> buttons = [
    "Holy place",
    "Restaurant",
    "Shopping malls",
    "Cinemas",
    "Railway station",
    "Bank",
    "Retail store",
    "Hotels",
    "Hospital",
    "Park"
  ];
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: deviceHeight / 10),
                child: SizedBox(
                  width: deviceWidth / 2,
                  height: deviceWidth / 5,
                  child: Image.asset('assets/images/viola-logo.png',
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: deviceHeight / 15),
                child: const Text(
                  "Select Location",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: deviceHeight / 6, bottom: deviceHeight / 8),
                child: Column(
                  children: [
                    for (int i = 0; i < 10; i += 2)
                      Row(
                        children: [
                          SizedBox(
                              width: deviceWidth / 2,
                              height: deviceWidth / 6.5,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: elevatedButton(i))),
                          SizedBox(
                              width: deviceWidth / 2,
                              height: deviceWidth / 6.5,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: elevatedButton(i + 1))),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  elevatedButton(int index) {
    return ElevatedButton(
      child: Text(buttons[index], style: TextStyle(fontSize: deviceWidth / 25)),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const BookingDrop()));
      },
    );
  }
}
