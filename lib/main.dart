import 'package:flutter/material.dart';
import 'package:fotos/pages/FirstPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      )),
      title: 'Fotos',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
