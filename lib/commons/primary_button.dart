import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  final bool enabled;

  const PrimaryButton({
    Key key,
    @required this.onPressed,
    @required this.textButton,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: FlatButton(
        onPressed: enabled ? onPressed : null,
        textColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            color: enabled ? Theme.of(context).primaryColor : Colors.black.withOpacity(0.10),
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
