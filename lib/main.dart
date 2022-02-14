import "package:flutter/material.dart";
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/pages/home_screen.dart';
import 'package:webapp/pages/site_layout.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme:const PageTransitionsTheme(
          builders:  {
            TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android:FadeUpwardsPageTransitionsBuilder()
          }
        ),
        primaryColor: Colors.blue
      ),
      home: const SiteLayout(),
    );
  }
}