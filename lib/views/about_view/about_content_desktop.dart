import 'package:flutter/material.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/services/navigation_service.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/utils/text_styles.dart';
import 'package:portfolio_web/views/about_view/CustomButton.dart';
import 'package:portfolio_web/views/about_view/data.dart';
import 'package:portfolio_web/views/about_view/timeline.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutContentDesktop extends StatelessWidget {
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
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/mybg.jpeg',
                      fit: BoxFit.cover,),
                  ),
                  Container(color: Colors.black.withOpacity(0.5)),
                  Container(
                     padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hola',
                                  style: TextStyle(fontSize: 65, color: Colors.white),
                                ),
                                Text(
                                  '.',
                                  style:
                                      TextStyle(color: kColorPrimary, fontSize: 65.0),
                                )
                              ],
                            ),
                            Container(
                              width: dim.width * 0.5,
                              child: Text(
                                about,
                                softWrap: true,
                                style: descriptionTextStyle(DeviceScreenType.desktop),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: 500.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButton(
                                    type: ButtonType.raised,
                                    onPressed: () {
                                      locator<NavigationService>().navigateTo(MyWorksRoute);
                                    },
                                    child: Text('View my works'),
                                  ),
                                  CustomButton(
                                    type: ButtonType.outline,
                                    onPressed: () {
                                      locator<NavigationService>()
                                          .navigateTo(ContactMeRoute);
                                    },
                                    child: Text(
                                      'Hire me',
                                      style: TextStyle(color:kColorPrimary),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          height: 400,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: kColorPrimary,
                          ),
                        ),
                        Flexible(child: Center(child: TimelineWidget())),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          width: double.maxFinite,
          child: Text(
            'WHO AM I?',
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ],
    );
  }
}
