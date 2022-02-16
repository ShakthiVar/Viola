import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viola/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VIOLA',
        theme: ThemeData(
          fontFamily: "Montserrat",
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF604A7A),
            onPrimary: Colors.white,
            primaryVariant: Colors.grey,
            secondary: Colors.grey,
            secondaryVariant: Colors.grey,
            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
        ),
        home: const Login());
  }
}
