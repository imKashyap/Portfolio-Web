import 'package:flutter/cupertino.dart';
import 'package:portfolio_web/routing/route_names.dart';

class CurrentPage extends ChangeNotifier {
  String currentPageName=HomeRoute;
  void changeColor(String routeName) {
    currentPageName = routeName;
    notifyListeners();
  }
}
