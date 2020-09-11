import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/views/home_view/home_view.dart';

void main() => runApp(MyApp());

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
      home: HomeView(),
    );
  }
}
