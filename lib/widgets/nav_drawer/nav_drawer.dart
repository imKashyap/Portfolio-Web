import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/widgets/nav_drawer/drawer_item.dart';

import 'nav_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          //NavDrawerHeader(),
          DrawerItem('Home', Icons.home),
          DrawerItem('About', Icons.info_outline),
          DrawerItem('Services', Icons.handyman_outlined),
          DrawerItem('My works', Icons.laptop_windows_outlined),
          DrawerItem('Endorsements', FontAwesomeIcons.checkCircle),
          DrawerItem('Blogs', FontAwesomeIcons.blog),
          DrawerItem('Contact me', Icons.phone),
        ],
      ),
    );
  }

  // FaIcon(FontAwesomeIcons.certificate)
}
