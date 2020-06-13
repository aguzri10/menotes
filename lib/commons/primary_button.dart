import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;

  const PrimaryButton({
    Key key,
    @required this.onPressed,
    @required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: FlatButton(
        onPressed: onPressed,
        textColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              textButton,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
