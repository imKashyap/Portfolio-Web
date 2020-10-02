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
                child: Center(
                  child: Container(
                    height: dim.height * 0.55,
                    child: PageView.builder(
                      itemCount: 2,
                      controller: PageController(viewportFraction: 0.8),
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return _buildCarouselItem(context, itemIndex);
                      },
                    ),
                  ),
                )),
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

  Stack _buildEndorseStack(int index) {
    String name, designation, remarks, img, url;
    if (index == 1) {
      name = 'Jay Tarapara';
      designation = 'FLutter Developer';
      remarks =
          'A dynamic young individual with a larger than life approach. He\'s always ready to learn and help others with a smile on his face. A brilliant flutter developer obviously and good management skills too. Personally, I\'ve learnt a lot from you. ';
      img = 'assets/images/endorse1.jpeg';
      url = '';
    } else {
      name = 'Jay Tarapara';
      designation = 'FLutter Developer';
      remarks =
          'A dynamic young individual with a larger than life approach. He\'s always ready to learn and help others with a smile on his face. A brilliant flutter developer obviously and good management skills too. Personally, I\'ve learnt a lot from you. ';
      img = 'assets/images/endorse1.jpeg';
      url = '';
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.0,
              width: dim.width * 0.3,
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
                remarks,
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
                    child: ClipOval(
                      child: Image.asset(img),
                    ),
                  ),
                  Column(
                    children: [
                      Text(name),
                      Text(designation),
                    ],
                  ),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.linkedinIn),
                      color: Colors.white,
                      onPressed: () {
                        launch(url);
                      })
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: _buildEndorseStack(itemIndex));
  }
}
