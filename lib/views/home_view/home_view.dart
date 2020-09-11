import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/views/home_view/home_content_desktop.dart';
import 'package:portfolio_web/views/home_view/home_content_mobile.dart';
import 'package:portfolio_web/widgets/animation/particles.dart';
import 'package:portfolio_web/widgets/centered_view.dart';
import 'package:portfolio_web/widgets/nav_bar/navigation_bar.dart';
import 'package:portfolio_web/widgets/nav_drawer/nav_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);
  Dimensions dimensions;
 var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    dimensions = Dimensions(context);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
key: scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        body: Stack(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/bg-desktop.jpg'),
                  fit: BoxFit.cover,
                  height: dimensions.height,
                  width: dimensions.width,
                ),
                Container(color: Colors.black.withOpacity(0.5)),
              ],
            ),
            Positioned.fill(child: Particles(4)),
            Column(
              children: <Widget>[
                NavigationBar(scaffoldKey: scaffoldKey,),
                Expanded(
                  child: ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
