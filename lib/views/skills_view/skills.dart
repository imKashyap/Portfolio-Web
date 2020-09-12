import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about_view/about_content_desktop.dart';
import 'package:portfolio_web/views/about_view/about_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ScreenTypeLayout(
        mobile: AboutContentMobile(),
        desktop: AboutContentDesktop(),
      ),
    );
  }
}
