import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesContentDesktop extends StatelessWidget {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildServicesContainer(
                          icon: Icons.phone_android_outlined,
                          title: 'App Development',
                          desc:
                              'Larson is a responsive HTML5 template suitable for personal websites.'),
                      _buildServicesContainer(
                          icon: Icons.laptop_windows_outlined,
                          title: 'Web Development',
                          desc:
                              'Larson is a responsive HTML5 template suitable for personal websites.'),
                      _buildServicesContainer(
                          icon: FontAwesomeIcons.microphoneAlt,
                          title: 'Tech talks & Instructions',
                          desc:
                              'Larson is a responsive HTML5 template suitable for personal websites.'),
                      _buildServicesContainer(
                          icon: FontAwesomeIcons.java,
                          title: 'Core Java Programming',
                          desc:
                              'Larson is a responsive HTML5 template suitable for personal websites.'),
                    ],
                  ),
                )),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          width: double.maxFinite,
          alignment: Alignment.topCenter,
          child: Text(
            'WHAT I OFFER?',
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ],
    );
  }

  Widget _buildServicesContainer({IconData icon, String title, String desc}) {
    return Container(
      height: 280.0,
      width: 280.0,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        // border: Border.all(color: kColorPrimary),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.black,
              child: Icon(
                icon,
                size: 50.0,
                color: kColorPrimary,
              ),
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, 
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
                width: 200.0,
                child: Divider(
                  color: kColorPrimary,
                )),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
