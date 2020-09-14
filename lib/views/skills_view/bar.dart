import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:simple_animations/simple_animations.dart';

class Bar extends StatelessWidget {
  final double width;
  final String label;

  final int _baseDurationMs = 2500;
  Dimensions dim;
  Bar(this.width, this.label);

  @override
  Widget build(BuildContext context) {
    dim = Dimensions(context);
    final double _maxElementWidth = dim.width * 0.3;
    return ControlledAnimation(
      duration: Duration(milliseconds: (width * _baseDurationMs).round()),
      tween: Tween(begin: 0.0, end: width),
      builder: (context, animatedWidth) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: _maxElementWidth,
              child: Row(
                children: [
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Spacer(),
                  Text(
                    '${(animatedWidth * 100).round()}%',
                    style: TextStyle(
                      color: kColorPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              width: _maxElementWidth,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 3.0),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor:
                        animatedWidth, // animatedWidth * _maxElementWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
