import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
        // child: SingleChildScrollView(
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
                "Select payment method",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: deviceHeight / 4, bottom: deviceHeight / 5),
            // child:
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.3,
                    height: deviceWidth / 7,
                    child: ElevatedButton(
                      child: Text("Credit/ Debit card/ Net banking",
                          style: TextStyle(
                              fontSize: deviceWidth / 25,
                              fontWeight: FontWeight.w600)),
                      onPressed: () {},
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  SizedBox(
                    width: deviceWidth / 1.3,
                    height: deviceWidth / 7,
                    child: ElevatedButton(
                      child: Text("Others",
                          style: TextStyle(
                              fontSize: deviceWidth / 25,
                              fontWeight: FontWeight.w600)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            // )
          ],
        ),
      ),
      // ),
    );
  }
}
