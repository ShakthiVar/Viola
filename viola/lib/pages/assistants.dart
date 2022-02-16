import 'package:flutter/material.dart';
import 'dart:math';

import 'package:viola/pages/payment.dart';

class Assistants extends StatefulWidget {
  const Assistants({Key? key}) : super(key: key);

  @override
  _AssistantsState createState() => _AssistantsState();
}

class _AssistantsState extends State<Assistants> {
  late double deviceWidth;
  late double deviceHeight;
  Random random = Random();
  Color contrast = const Color(0xFF604A7A);
  Color primary = const Color(0xFFCBC1DA);
  List names = [
    "Adam",
    "Alex",
    "Aaron",
    "Ben",
    "Carl",
    "Dan",
    "David",
    "Edward",
    "Fred",
    "Frank",
    "George",
    "Hal",
    "Hank",
    "Ike",
    "John",
    "Jack",
    "Joe",
    "Larry",
    "Monte",
    "Matthew",
    "Mark",
    "Nathan",
    "Otto",
    "Paul",
    "Peter",
    "Roger",
    "Roger",
    "Steve",
    "Thomas",
    "Tim",
    "Ty",
    "Victor",
    "Walter"
  ];
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
                "Assistants nearby",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                  top: deviceHeight / 20,
                  // left: deviceWidth / 10,
                  // right: deviceWidth / 10
                ),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(names[index],
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Text("${random.nextInt(60)} mins"),
                      trailing: Text("Rs. ${random.nextInt(60)}",
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Payment()));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
