import 'package:flutter/material.dart';
import 'package:viola/pages/assistants.dart';

class BookingDrop extends StatefulWidget {
  const BookingDrop({Key? key}) : super(key: key);

  @override
  _BookingDropState createState() => _BookingDropState();
}

class _BookingDropState extends State<BookingDrop> {
  String pickup = "";
  String drop = "";
  Color contrast = const Color(0xFF604A7A);
  Color primary = const Color(0xFFCBC1DA);
  late double deviceWidth;
  late double deviceHeight;
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
                padding: EdgeInsets.only(
                    top: deviceHeight / 10, bottom: deviceHeight / 4),
                child: SizedBox(
                  width: deviceWidth / 2,
                  height: deviceWidth / 5,
                  child: Image.asset('assets/images/viola-logo.png',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: deviceWidth / 2.1,
                height: deviceWidth / 7.5,
                child: ElevatedButton(
                  child: Text("Details",
                      style: TextStyle(fontSize: deviceWidth / 23)),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextFormField(
                  autocorrect: false,
                  autofocus: false,
                  controller: TextEditingController()
                    ..text = pickup
                    ..selection =
                        TextSelection.collapsed(offset: pickup.length),
                  onChanged: (text) {
                    pickup = text;
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: contrast),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: contrast),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                    ),
                    labelText: "Pickup location",
                    hintText: "",
                    labelStyle: TextStyle(
                      color: contrast,
                    ),
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 50),
                child: TextFormField(
                  autocorrect: false,
                  autofocus: false,
                  controller: TextEditingController()
                    ..text = drop
                    ..selection = TextSelection.collapsed(offset: drop.length),
                  onChanged: (text) {
                    drop = text;
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: contrast),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: contrast),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                    ),
                    labelText: "Drop location",
                    hintText: "",
                    labelStyle: TextStyle(
                      color: contrast,
                    ),
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth / 2.1,
                height: deviceWidth / 7.5,
                child: ElevatedButton(
                  child: Text("Book Assistant",
                      style: TextStyle(fontSize: deviceWidth / 23)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Assistants()));
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: deviceHeight / 8))
            ],
          ),
        ),
      ),
    );
  }
}
