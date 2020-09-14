import 'package:flutter/material.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/current_page.dart';
import 'package:portfolio_web/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CurrentPage(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
        theme: ThemeData(
          primaryColor: kColorPrimary,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Lato'),
        ),
        home: LayoutTemplate(),
      ),
    );
  }
}
