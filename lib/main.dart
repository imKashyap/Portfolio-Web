import 'package:flutter/material.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primaryColor: kColorPrimary,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Lato'),
      ),
      home: LayoutTemplate(),
    );
  }
}
