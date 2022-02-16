import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viola/pages/details.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String otp = "";
  Color contrast = const Color(0xFF604A7A);
  late double deviceWidth;
  late double deviceHeight;
  bool _validates = true;
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: deviceHeight / 15,
                        bottom: 50),
                    child: TextFormField(
                      autocorrect: false,
                      autofocus: false,
                      controller: TextEditingController()
                        ..text = otp
                        ..selection =
                            TextSelection.collapsed(offset: otp.length),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]+")),
                        LengthLimitingTextInputFormatter(6)
                      ],
                      onChanged: (text) {
                        otp = text;
                      },
                      decoration: InputDecoration(
                        errorText: _validates ? null : "Enter the 6-digit OTP",
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
                        labelText: "OTP",
                        hintText: "",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: contrast,
                        ),
                        labelStyle: TextStyle(
                          color: contrast,
                        ),
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (otp.length == 6) {
                          setState(() {
                            _validates = true;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Details()));
                        } else {
                          setState(() {
                            _validates = false;
                          });
                        }
                      },
                      child: const Text("VERIFY"),
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

Widget _textFieldOTP({required bool first, last}) {
  return Container(
    height: 85,
    child: AspectRatio(
      aspectRatio: 1.0,
      child: TextField(
        autofocus: true,
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.purple),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
  );
}
