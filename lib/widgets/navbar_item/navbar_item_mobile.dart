import 'package:flutter/material.dart';
import 'package:portfolio_web/models/navbar_item_model.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/services/navigation_service.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:provider_architecture/_provider_widget.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        locator<NavigationService>().navigateTo(model.navigationPath);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30),
        child: Row(
          children: <Widget>[
            Icon(
              model.iconData,
              color: kColorPrimary,
            ),
            SizedBox(width: 20),
            Text(
              model.title,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
