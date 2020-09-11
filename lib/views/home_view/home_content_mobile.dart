import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/widgets/heading_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions dim = Dimensions(context);
    return Column(
      children: [
        AvatarGlow(
          glowColor: Colors.yellow,
          endRadius: 120.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: dim.width*0.16,
              child: Image.asset(
                'assets/images/profile.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        HeadingInfo(type: ScreenType.mobile,),
      ],
    );
  }
}
