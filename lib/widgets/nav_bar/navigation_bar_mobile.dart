import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/rk_dot.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({this.scaffoldKey});
  final scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.black.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RKDot(),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
          ),
        ],
      ),
    );
  }
}
