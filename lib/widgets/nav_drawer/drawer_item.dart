import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/nav_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Row(
        children: <Widget>[
          Icon(icon,color: kColorPrimary,),
          SizedBox(width: 20),
          NavBarItem(title),
        ],
      ),
    );
  }
}
