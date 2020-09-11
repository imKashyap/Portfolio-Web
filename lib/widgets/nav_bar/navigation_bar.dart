import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/nav_bar/nav_bar_tablet_desktop.dart';
import 'package:portfolio_web/widgets/nav_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({this.scaffoldKey});
  final scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(scaffoldKey: scaffoldKey,),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
