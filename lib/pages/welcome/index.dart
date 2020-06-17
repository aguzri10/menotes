import 'package:flutter/material.dart';
import 'package:menotes/commons/primary_button.dart';
import 'package:menotes/commons/secondary_button.dart';
import 'package:menotes/pages/login/index.dart';
import 'package:menotes/pages/register/index.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 260,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(300),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 120,
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.50),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(400),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
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
                        'in Me Notes',
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
                        PrimaryButton(
                          onPressed: () {
                            final paddingTop =
                                MediaQuery.of(context).padding.top;
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
                          border: Border.all(
                            color: theme.primaryColor,
                          ),
                          onPressed: () {
                            final paddingTop =
                                MediaQuery.of(context).padding.top;
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
        ],
      ),
    );
  }
}
