import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyWorksContentDesktop extends StatelessWidget {
  Dimensions dim;
  @override
  Widget build(BuildContext context) {
    dim = Dimensions(context);
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 60.0),
          child: Center(
            child: Container(
                color: Colors.black, width: dim.width * 0.9, child: Center()),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          width: double.maxFinite,
          alignment: Alignment.topLeft,
          child: Text(
            'MY RECENT WORKS',
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ],
    );
  }
}
