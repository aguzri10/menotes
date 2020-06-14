import 'package:flutter/material.dart';
import 'package:menotes/commons/primary_button.dart';
import 'package:menotes/routes/constants.dart';

class LoginPage extends StatelessWidget {
  final double paddingTop;

  const LoginPage({Key key, @required this.paddingTop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: EdgeInsets.only(top: paddingTop),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Masuk',
                      style: textTheme.subtitle1.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: theme.primaryColor,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextField(
                                style: textTheme.bodyText2.copyWith(
                                  color: Colors.black.withOpacity(0.70),
                                  fontWeight: FontWeight.w500,
                                ),
                                autofocus: true,
                                decoration: InputDecoration(
                                  hintText: 'Your email in here',
                                  hintStyle: textTheme.bodyText2.copyWith(
                                    color: Colors.black.withOpacity(0.30),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person_outline,
                                    color: theme.primaryColor,
                                    // size: 24,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              TextFormField(
                                style: textTheme.bodyText2.copyWith(
                                  color: Colors.black.withOpacity(0.70),
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Your password in here',
                                  hintStyle: textTheme.bodyText2.copyWith(
                                    color: Colors.black.withOpacity(0.30),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: theme.primaryColor),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: theme.primaryColor,
                                    // size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: PrimaryButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, mainNavigateRoute, (route) => false);
                        },
                        textButton: 'Masuk',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
