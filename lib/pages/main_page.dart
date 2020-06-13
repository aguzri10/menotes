import 'package:flutter/material.dart';
import 'package:menotes/routes/constants.dart';
import 'package:menotes/routes/routes.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.pushNamedAndRemoveUntil(
          context, welcomeRoute, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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
        ),
        buttonColor: Color(0xFF29BDFB),
      ),
      onGenerateRoute: Router.generateRoute,
      title: 'MeNotes',
    );
  }
}

class MainNavigate extends StatefulWidget {
  @override
  _MainNavigateState createState() => _MainNavigateState();
}

class _MainNavigateState extends State<MainNavigate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text('Home'),
    );
  }
}
