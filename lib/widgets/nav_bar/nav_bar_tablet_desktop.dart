import 'package:flutter/material.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item.dart';
import 'package:portfolio_web/widgets/rk_dot.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: RKDot(),
          ),
          Row(
            children: <Widget>[
              NavBarItem('HOME', HomeRoute),
              NavBarItem('ABOUT', AboutRoute),
              NavBarItem('SKILLS', SkillsRoute),
              NavBarItem('SERVICES', ServicesRoute),
              NavBarItem('MY WORKS', MyWorksRoute),
              NavBarItem('ENDORSEMENTS', EndorsementsRoute),
              NavBarItem('BLOGS', BlogsRoute),
              NavBarItem('CONTACT ME', ContactMeRoute),
            ],
          )
        ],
      ),
    );
  }
}
