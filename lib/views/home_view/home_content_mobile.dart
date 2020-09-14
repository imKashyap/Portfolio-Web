import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/views/home_view/heading_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions dim = Dimensions(context);
    return Column(
      children: [
        AvatarGlow(
          glowColor: kColorPrimary,
          endRadius: 120.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: CircleAvatar(
            radius: dim.width * 0.17,
            backgroundColor: kColorPrimary,
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        HeadingInfo(
          type: ScreenType.mobile,
        ),
      ],
    );
  }
}
