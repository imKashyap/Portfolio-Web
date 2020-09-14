import 'package:flutter/material.dart';
import 'package:portfolio_web/views/my_works_view/my_works_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'my_works_content_desktop.dart';

class MyWorksView extends StatelessWidget {
  const MyWorksView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ScreenTypeLayout(
        mobile: MyWorksContentMobile(),
        desktop: MyWorksContentDesktop(),
      ),
    );
  }
}
