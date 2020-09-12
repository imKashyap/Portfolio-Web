import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          'WHO AM I?',
          style: titleTextStyle(DeviceScreenType.mobile),
        )
      ],
    );
  }
}
