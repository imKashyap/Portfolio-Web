import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
  return TextStyle(
      color: Colors.white.withOpacity(0.7),
      fontWeight: FontWeight.w800,
      letterSpacing: 3,
      height: 0.9,
      fontSize: titleSize);
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.mobile ? 16 : 18;

  return TextStyle(
    fontSize: descriptionSize,
    color: Colors.white.withOpacity(0.5),
    height: 1.7,
  );
}
