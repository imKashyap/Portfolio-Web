import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class RKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 150, width: 150, child: _buildSignature());
  }

  Row _buildSignature() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "RK",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kColorPrimary,
          ),
        ),
      ],
    );
  }
}
