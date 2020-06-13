import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF29BDFB),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Color(0xFF29BDFB),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        buttonColor: Color(0xFF29BDFB),
      ),
      title: 'MeNotes',
    );
  }
}
