import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: kColorPrimary,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'SKILL UP NOW',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
