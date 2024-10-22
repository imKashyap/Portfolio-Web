import 'package:flutter/material.dart';
import 'package:portfolio_web/views/about_view/about_content_desktop.dart';
import 'package:portfolio_web/views/about_view/about_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';


class AboutView extends StatelessWidget {
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
