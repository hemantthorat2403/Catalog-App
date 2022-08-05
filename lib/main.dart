import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/login_page.dart';
import 'package:demo/utils/routes.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme:MyTheme.lightTheme(context)  ,  
        darkTheme:  MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => login_page(),
           MyRoutes.homeRoute: (context) =>  Homepage(),
          MyRoutes.loginRoute:(context) => login_page()
      },
    );
  }
}
