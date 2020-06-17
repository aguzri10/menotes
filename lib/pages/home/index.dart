import 'package:flutter/material.dart';
import 'package:menotes/services/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 60,
            decoration: BoxDecoration(
                color: theme.primaryColor.withOpacity(0.60),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                        MediaQuery.of(context).size.height / 2))),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                    MediaQuery.of(context).size.height / 4 + 60),
                bottomLeft: Radius.circular(
                    MediaQuery.of(context).size.height / 4 + 60),
                bottomRight: Radius.circular(
                    MediaQuery.of(context).size.height / 4 + 60),
              ),
            ),
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: SizedBox(
                  height: kTextTabBarHeight,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hello,',
                            style: textTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Im Agus Riyanto',
                            style: textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 15,
                        offset: Offset(0, 9),
                      )
                      // offset: reverse ? Offset(5, 0) : Offset(0, 5))
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MenuItem(
                        icon: iconSports,
                        text: 'Sports',
                        textTheme: textTheme,
                      ),
                      MenuItem(
                        icon: iconTrip,
                        text: 'Perjalanan',
                        textTheme: textTheme,
                      ),
                      MenuItem(
                        icon: iconEvents,
                        text: 'Events',
                        textTheme: textTheme,
                      ),
                      MenuItem(
                        icon: iconMoney,
                        text: 'Money',
                        textTheme: textTheme,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String icon, text;
  final TextTheme textTheme;

  const MenuItem({
    Key key,
    this.icon,
    this.text,
    this.textTheme,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          icon,
          scale: 2,
        ),
        SizedBox(height: 7),
        Text(
          text,
          style: textTheme.caption.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
