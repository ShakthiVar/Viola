import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viola/pages/otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String phoneNumber = "";
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
                        ..text = phoneNumber
                        ..selection =
                            TextSelection.collapsed(offset: phoneNumber.length),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]+")),
                        LengthLimitingTextInputFormatter(10)
                      ],
                      onChanged: (text) {
                        phoneNumber = text;
                      },
                      decoration: InputDecoration(
                        errorText: _validates ? null : "Enter a valid number",
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
                        labelText: "Phone Number",
                        hintText: "",
                        prefixIcon: Icon(
                          Icons.phone,
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
                        if (phoneNumber.length == 10) {
                          setState(() {
                            _validates = true;
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return const Otp(key: null);
                          }));
                        } else {
                          setState(() {
                            _validates = false;
                          });
                        }
                      },
                      child: const Text("SEND OTP"),
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
