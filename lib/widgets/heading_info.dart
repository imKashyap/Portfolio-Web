import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

enum ScreenType { mobile, desktop }

class HeadingInfo extends StatelessWidget {
  final ScreenType type;
  const HeadingInfo({
    this.type,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions dim = Dimensions(context);
    return Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hi, My name is ",
                  textScaleFactor: dim.textScaleFactor,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: type == ScreenType.mobile
                          ? dim.width * 0.06
                          : dim.width * 0.02)),
              Text(
                "Rahul Kashyap.",
                textScaleFactor: dim.textScaleFactor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorPrimary,
                    fontSize: type == ScreenType.mobile
                        ? dim.width * 0.06
                        : dim.width * 0.02),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I'm a ",
                textScaleFactor: dim.textScaleFactor,
                style: TextStyle(
                  fontSize: type == ScreenType.mobile
                      ? dim.width * 0.06
                      : dim.width * 0.02,
                  color: Colors.white,
                ),
              ),
              TyperAnimatedTextKit(
                  text: [
                    "App Developer",
                    "Web Developer",
                    "Freelancer",
                    "Open Source Enthusiast",
                    "Competitive Coder",
                  ],
                  speed: Duration(milliseconds: 100),
                  textStyle: TextStyle(
                    
                      fontFamily: "Lato",
                      fontSize: type == ScreenType.mobile
                          ? dim.width * 0.08
                          : dim.width * 0.04,
                      fontWeight: FontWeight.bold,
                      color: kColorPrimary),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ],
          ),
          Text(
            'Turning caffeine into applications.',
            textScaleFactor: dim.textScaleFactor,
            style: TextStyle(
              color: Colors.grey,
              fontSize:
                  type == ScreenType.mobile ? dim.width * 0.04 : dim.width * 0.015,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(FaIcon(FontAwesomeIcons.facebookF),
                  'https://www.facebook.com/irahulkashyap/'),
              _buildSocialButton(FaIcon(FontAwesomeIcons.twitter),
                  'https://twitter.com/imkashyap_'),
              _buildSocialButton(FaIcon(FontAwesomeIcons.linkedinIn),
                  'https://www.linkedin.com/in/rahul-kashyap-230577195/'),
              _buildSocialButton(FaIcon(FontAwesomeIcons.instagram),
                  'https://www.instagram.com/imkashyap__/'),
              _buildSocialButton(FaIcon(FontAwesomeIcons.github),
                  'https://github.com/imkashyap'),
              _buildSocialButton(FaIcon(FontAwesomeIcons.hackerrank),
                  ' https://www.hackerrank.com/imkashyap'),
            ],
          ),
          _buildDownloadButton(),
        ],
      ),
    );
  }

  IconButton _buildSocialButton(Widget icon, String url) {
    return IconButton(
        icon: icon,
        color: Colors.white,
        onPressed: () {
          launch(url);
        });
  }

  _buildDownloadButton() {
    return OutlineButton(
      hoverColor: Colors.black54,
      borderSide: BorderSide(color: kColorPrimary),
      onPressed: () {},
      child: Text('Download Resume',
      style: TextStyle(color: kColorPrimary),),
    );
  }
}
