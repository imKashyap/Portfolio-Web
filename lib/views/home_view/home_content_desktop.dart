import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/views/home_view/heading_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions dim = Dimensions(context);
    return Row(
      children: [
        AvatarGlow(
          glowColor: kColorPrimary,
          endRadius: 300,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: CircleAvatar(
            radius: dim.width * 0.105,
            backgroundColor: kColorPrimary,
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        HeadingInfo(type: ScreenType.desktop),
      ],
    );
  }
}
