import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'endorsements_content_desktop.dart';
import 'endorsements_content_mobile.dart';

class EndorsementsView extends StatelessWidget {
  const EndorsementsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ScreenTypeLayout(
        mobile: EndorsementsContentMobile(),
        desktop: EndorsementsContentDesktop(),
      ),
    );
  }
}
