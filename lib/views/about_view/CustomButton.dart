import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

enum ButtonType { outline, raised }

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final ButtonType type;
  final Widget child;
  CustomButton({this.onPressed, this.type, this.child});
  @override
  Widget build(BuildContext context) {
    return type == ButtonType.outline?_outlineButton():_flatButton();
  }

  Widget _flatButton() {
    return Container(
      width: 150.0,
      child: FlatButton(
        onPressed: onPressed,
        color: kColorPrimary,
        child: child,
      ),
    );
  }

  Widget _outlineButton() {
    return Container(
      width: 150.0,
      child: OutlineButton(
        hoverColor: Colors.grey.withOpacity(0.2),
        borderSide: BorderSide(color: kColorPrimary),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
