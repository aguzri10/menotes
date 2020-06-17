import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  final Border border;

  const SecondaryButton({
    Key key,
    @required this.onPressed,
    @required this.textButton,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: FlatButton(
        onPressed: onPressed,
        textColor: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: border,
          ),
          child: Center(
            child: Text(
              textButton,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
