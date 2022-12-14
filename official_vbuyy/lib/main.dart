import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:official_vbuyy/screens/common/login.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: HexColor('#00FFAB'),
          accentColor: HexColor('#E5E5E5'),
          fontFamily: GoogleFonts.play().fontFamily,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.w700,
            ),
            headline2: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
            headline3: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            headline4: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            headline5: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            headline6: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            caption: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )),
      debugShowCheckedModeBanner: false,
      title: 'Vbuyy',
      home: Login(),
    );
  }
}
