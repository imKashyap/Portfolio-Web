import 'package:flutter/material.dart';
import 'package:portfolio_web/views/services_view/services_content_desktop.dart';
import 'package:portfolio_web/views/services_view/services_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ScreenTypeLayout(
        mobile: ServicesContentMobile(),
        desktop: ServicesContentDesktop(),
      ),
    );
  }
}
