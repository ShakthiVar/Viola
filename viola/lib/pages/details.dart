import 'package:flutter/material.dart';
import 'package:viola/pages/home.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Color contrast = const Color(0xFF604A7A);
  Color primary = const Color(0xFFCBC1DA);
  late double deviceWidth;
  late double deviceHeight;
  String name = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight / 10, bottom: deviceHeight / 5),
              child: SizedBox(
                width: deviceWidth / 2,
                height: deviceWidth / 5,
                child: Image.asset('assets/images/viola-logo.png',
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: deviceWidth / 1.1,
                    decoration: BoxDecoration(
                      color: primary,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 12,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                color: contrast,
                                fontWeight: FontWeight.w600,
                                fontSize: 28),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 60),
                          child: TextFormField(
                            autocorrect: false,
                            autofocus: false,
                            controller: TextEditingController()
                              ..text = name
                              ..selection =
                                  TextSelection.collapsed(offset: name.length),
                            onChanged: (text) {
                              name = text;
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
                              labelText: "Name",
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
                              left: 20, right: 20, top: 30),
                          child: TextFormField(
                            autocorrect: false,
                            autofocus: false,
                            controller: TextEditingController()
                              ..text = email
                              ..selection =
                                  TextSelection.collapsed(offset: email.length),
                            onChanged: (text) {
                              email = text;
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
                              labelText: "Email",
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
                              left: 20, right: 20, top: 30),
                          child: TextFormField(
                            autocorrect: false,
                            autofocus: false,
                            controller: TextEditingController()
                              ..text = password
                              ..selection = TextSelection.collapsed(
                                  offset: password.length),
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
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
                              labelText: "Password",
                              hintText: "",
                              labelStyle: TextStyle(
                                color: contrast,
                              ),
                              fillColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, bottom: 60),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Home()));
                            },
                            child: const Text("CREATE"),
                          ),
                        )
                      ],
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
