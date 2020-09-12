import 'package:flutter/material.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/views/about_view/about_view.dart';
import 'package:portfolio_web/views/blogs_view/blogs_view.dart';
import 'package:portfolio_web/views/contact_me_view/contact_me_view.dart';
import 'package:portfolio_web/views/endorsements_view/endorsements_view.dart';
import 'package:portfolio_web/views/home_view/home_view.dart';
import 'package:portfolio_web/views/my_works_view/my_works_view.dart';
import 'package:portfolio_web/views/services_view/services_view.dart';
import 'package:portfolio_web/views/skills_view/skills.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
      case SkillsRoute:
      return _getPageRoute(SkillsView());
    case ServicesRoute:
      return _getPageRoute(ServicesView());
    case MyWorksRoute:
      return _getPageRoute(MyWorksView());
    case EndorsementsRoute:
      return _getPageRoute(EndorsementsView());
    case BlogsRoute:
      return _getPageRoute(BlogsView());
    case ContactMeRoute:
      return _getPageRoute(ContactMeView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation animation,
            Animation secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation animation,
            Animation secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween(begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
                .animate(animation),
            child: child,
          ),
        );
}
