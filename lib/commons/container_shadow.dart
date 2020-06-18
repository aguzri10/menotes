import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  final bool reverse;
  final double margin, padding, radius;
  final Widget child;

  const ContainerShadow({
    Key key,
    this.reverse = false,
    this.margin = 15.0,
    this.padding = 15.0,
    this.radius = 15.0,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: reverse ? Offset(5, 0) : Offset(0, 5),
          )
        ],
      ),
      child: child,
    );
  }
}
