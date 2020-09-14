import 'package:flutter/material.dart';
import 'package:portfolio_web/models/navbar_item_model.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/services/navigation_service.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/current_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/_provider_widget.dart';

class NavBarItemTabletDesktop extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    CurrentPage cp = Provider.of<CurrentPage>(context);
    String routeName = cp.currentPageName;
    String myRouteName;
    switch (model.title) {
      case 'HOME':
        myRouteName = HomeRoute;
        break;
      case 'ABOUT':
        myRouteName = AboutRoute;
        break;
      case 'SKILLS':
        myRouteName = SkillsRoute;
        break;
      case 'SERVICES':
        myRouteName = ServicesRoute;
        break;
      case 'MY WORKS':
        myRouteName = MyWorksRoute;
        break;
      case 'ENDORSEMENTS':
        myRouteName = EndorsementsRoute;
        break;

      case 'BLOGS':
        myRouteName = BlogsRoute;
        break;
      case 'CONTACT ME':
        myRouteName = ContactMeRoute;
        break;

        break;
      default:
        myRouteName = HomeRoute;
    }
    return FlatButton(
        onPressed: () {
          locator<NavigationService>().navigateTo(model.navigationPath);
          cp.changeColor(myRouteName);
        },
        child: Text(
          model.title,
          style: TextStyle(
            fontSize: 16,
            color: routeName == myRouteName ? kColorPrimary : Colors.white,
          ),
        ));
  }
}
