import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:portfolio_web/views/about_view/CustomButton.dart';
import 'package:portfolio_web/views/skills_view/bar.dart';
import 'package:portfolio_web/views/skills_view/cross_pattern.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsContentDesktop extends StatelessWidget {
  Dimensions dim;
  @override
  Widget build(BuildContext context) {
    dim = Dimensions(context);
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomLeft,
            child: CrossPattern()),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 60.0),
          child: Center(
            child: Container(
              color: Colors.black,
              width: dim.width * 0.8,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Languages ',
                                    style: TextStyle(
                                        fontSize: dim.width * 0.02,
                                        color: kColorPrimary),
                                  ),
                                  Text(
                                    'known',
                                    style: TextStyle(
                                        fontSize: dim.width * 0.02,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Bar(0.75, "Java"),
                              Bar(0.7, "Dart"),
                              Bar(0.6, "Javascript"),
                              Bar(0.5, "Firebase"),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            height: double.maxFinite,
                            child: VerticalDivider(
                              thickness: 1.5,
                              color: kColorPrimary,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Softwares ',
                                    style: TextStyle(
                                        fontSize: dim.width * 0.02,
                                        color: kColorPrimary),
                                  ),
                                  Text(
                                    'known',
                                    style: TextStyle(
                                        fontSize: dim.width * 0.02,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Bar(0.8, "Android Studio"),
                              Bar(0.8, "VS Code"),
                              Bar(0.6, "Eclipse"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Feel free to reach me regarding Web Development, Application Development, Flutter, Firebase, Java, Dart, Git, Object Oriented Concepts and Data Structures, future opportunities in these fields, or simply your favorite book or an MCU movie. :)',
                      textAlign: TextAlign.center,
                      style: descriptionTextStyle(DeviceScreenType.desktop),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomButton(
                      type: ButtonType.outline,
                      onPressed: () {
                        launch(
                            'https://www.linkedin.com/in/rahul-kashyap-230577195/');
                      },
                      child: Text(
                        'Connect Me',
                        style: TextStyle(color: kColorPrimary),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          width: double.maxFinite,
          alignment: Alignment.topRight,
          child: Text(
            'MY SKILLS',
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ],
    );
  }
}
