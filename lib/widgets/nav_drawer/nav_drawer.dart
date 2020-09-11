import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item.dart';

import 'nav_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.black54,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavDrawerHeader(),
          NavBarItem('Home', HomeRoute, icon: Icons.home),
          NavBarItem('About', AboutRoute, icon: Icons.info_outline),
          NavBarItem(
            'Services',
            ServicesRoute,
            icon: Icons.handyman_outlined,
          ),
          NavBarItem(
            'My works',
            MyWorksRoute,
            icon: Icons.laptop_windows_outlined,
          ),
          NavBarItem(
            'Endorsements',
            EndorsementsRoute,
            icon: FontAwesomeIcons.checkCircle,
          ),
          NavBarItem(
            'Blogs',
            BlogsRoute,
            icon: FontAwesomeIcons.blog,
          ),
          NavBarItem(
            'Contact me',
            ContactMeRoute,
            icon: Icons.handyman_outlined,
          ),
        ],
      ),
    );
  }

  // FaIcon(FontAwesomeIcons.certificate)
}
