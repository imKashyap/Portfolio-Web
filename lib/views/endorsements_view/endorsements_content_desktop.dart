import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class EndorsementsContentDesktop extends StatelessWidget {
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
                color: Colors.black,
                width: dim.width * 0.9,
                child: Center(child: _buildEndorseStack())),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          width: double.maxFinite,
          alignment: Alignment.topRight,
          child: Text(
            'WHAT MY CLIENTS SAY?',
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ],
    );
  }

  Stack _buildEndorseStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.0,
              width: dim.width * 0.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.white.withOpacity(0.2),
              ])),
            ),
            Container(
              height: 300.0,
              width: dim.width * 0.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.transparent,
              ])),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.quoteLeft,
                size: 40.0,
                color: kColorPrimary,
              ),
              Text(
                'A dynamic young individual with a larger than life approach. He\'s always ready to learn and help others with a smile on his face. A brilliant flutter developer obviously and good management skills too. Personally, I\'ve learnt a lot from you. ',
                textAlign: TextAlign.center,
                style: descriptionTextStyle(
                  DeviceScreenType.desktop,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: kColorPrimary,
                  ),
                  Column(
                    children: [
                      Text('Name'),
                      Text('Designayion'),
                    ],
                  ),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.linkedinIn),
                      color: Colors.white,
                      onPressed: () {
                        launch('url');
                      })
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
