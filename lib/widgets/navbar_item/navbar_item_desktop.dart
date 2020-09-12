import 'package:flutter/material.dart';
import 'package:portfolio_web/models/navbar_item_model.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/services/navigation_service.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:provider_architecture/_provider_widget.dart';

class NavBarItemTabletDesktop extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return FlatButton(
      hoverColor: kColorPrimary,
      onPressed: () {
        locator<NavigationService>().navigateTo(model.navigationPath);
      },
      child: Text(
        model.title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
