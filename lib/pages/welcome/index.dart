import 'package:flutter/material.dart';
import 'package:menotes/commons/secondary_button.dart';
import 'package:menotes/pages/login/index.dart';
import 'package:menotes/pages/register/index.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Color(0xFF29BDFB),
              Color(0xFF6FCFF8),
              Color(0xFF29BDFB),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello There,',
                    style: textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'in MeNotes App',
                    style: textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SecondaryButton(
                      onPressed: () {
                        final paddingTop = MediaQuery.of(context).padding.top;
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (_) {
                            return LoginPage(
                              paddingTop: paddingTop,
                            );
                          },
                        );
                      },
                      textButton: 'Masuk',
                    ),
                    SecondaryButton(
                      onPressed: () {
                        final paddingTop = MediaQuery.of(context).padding.top;
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (_) {
                            return RegisterPage(
                              paddingTop: paddingTop,
                            );
                          },
                        );
                      },
                      textButton: 'Daftar',
                    ),
                    SizedBox(height: 10)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
