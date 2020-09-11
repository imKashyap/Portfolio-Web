import 'package:flutter/material.dart';
import 'package:portfolio_web/routing/route_names.dart';
import 'package:portfolio_web/routing/router.dart';
import 'package:portfolio_web/services/locator.dart';
import 'package:portfolio_web/services/navigation_service.dart';
import 'package:portfolio_web/utils/dimensions.dart';
import 'package:portfolio_web/widgets/animation/particles.dart';
import 'package:portfolio_web/widgets/nav_bar/navigation_bar.dart';
import 'package:portfolio_web/widgets/nav_drawer/nav_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  LayoutTemplate({Key key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
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
                NavigationBar(
                  scaffoldKey: scaffoldKey,
                ),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
