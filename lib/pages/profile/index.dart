import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Profile'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Profile'),
        ),
      ),
    );
  }
}
