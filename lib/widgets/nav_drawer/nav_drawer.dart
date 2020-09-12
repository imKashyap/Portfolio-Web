import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item.dart';
import 'package:url_launcher/url_launcher.dart';

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
            icon: Icons.phone,
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Made with  ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    FaIcon(
                      FontAwesomeIcons.heart,
                      color: kColorPrimary,
                      size: 15.0,
                    ),
                    Text(
                      '  in flutter.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View source code ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      child: Text(
                        'here',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        launch('https://github.com/imKashyap/Portfolio-Web');
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // FaIcon(FontAwesomeIcons.certificate)
}
