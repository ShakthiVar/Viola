import 'package:flutter/material.dart';
import 'package:viola/pages/booking_location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double deviceWidth;
  late double deviceHeight;
  Color contrast = const Color(0xFF604A7A);
  Color primary = const Color(0xFFCBC1DA);
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
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
              padding: EdgeInsets.only(top: deviceHeight / 20),
              child: const Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.8,
                    height: deviceWidth / 7,
                    child: ElevatedButton(
                      child: Text("HANDICAPPED",
                          style: TextStyle(
                            fontSize: deviceWidth / 25,
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BookingLocation()));
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  SizedBox(
                    width: deviceWidth / 1.8,
                    height: deviceWidth / 7,
                    child: ElevatedButton(
                      child: Text("SENIOR CITIZEN",
                          style: TextStyle(
                            fontSize: deviceWidth / 25,
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const BookingLocation()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
