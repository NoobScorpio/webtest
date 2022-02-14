import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/large_screen.dart';
import 'package:webapp/widgets/nav_bar.dart';
import 'package:webapp/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
    );
  }
}
