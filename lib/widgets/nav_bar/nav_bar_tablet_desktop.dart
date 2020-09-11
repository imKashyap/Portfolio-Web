import 'package:flutter/material.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item.dart';
import 'package:portfolio_web/widgets/rk_dot.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const spaceBox = SizedBox(
      width: 30,
    );
    return Container(
      height: 100,
      color: Colors.black.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal:50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: RKDot(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home',HomeRoute),
              spaceBox,
              NavBarItem('About',AboutRoute),
               spaceBox,
              NavBarItem('Services',ServicesRoute),
              spaceBox,
              NavBarItem('My Works',MyWorksRoute),
               spaceBox,
              NavBarItem('Endorsements',EndorsementsRoute),
               spaceBox,
              NavBarItem('Blogs',BlogsRoute),
               spaceBox,
              NavBarItem('Contact me',ContactMeRoute),
            ],
          )
        ],
      ),
    );
  }
}

