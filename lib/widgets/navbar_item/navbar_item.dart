import 'package:flutter/material.dart';
import 'package:portfolio_web/models/navbar_item_model.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:portfolio_web/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return Provider.value(
      value: model,
      child: ScreenTypeLayout(
        tablet: NavBarItemTabletDesktop(),
        mobile: NavBarItemMobile(),
      ),
    );
  }
}
