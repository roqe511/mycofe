import 'package:flutter/material.dart';
// import 'package:coffee/values/responsive_app.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ResponsiveApp responsiveApp;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffee",
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        responsiveApp = ResponsiveApp(context);
        return Theme(
          data: ThemeData(
            backgroundColor: Colors.blueGrey[900],
            // Color de fondo
            primaryColor: Colors.black87,
            // Color del AppBar
            accentColor: Colors.blueGrey,
            // Contraste con el fondo
            iconTheme: IconThemeData(color: Colors.white),
            // Color de todos los iconos
            cardColor: Colors.white,
            // Colores de las card
            primaryTextTheme: getTextTheme(),
            textTheme: getTextTheme(),
            indicatorColor: Colors.white,
            // Color de las lineas de los card
            unselectedWidgetColor: Colors.blueGrey[300],
            tabBarTheme: TabBarTheme(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey[300],
            ),
            accentTextTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: responsiveApp.headline6),
              bodyText1: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: responsiveApp.bodyText1),
              bodyText2: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: responsiveApp.bodyText1),
            ),
          ),
          child: HomePage(),
        );
      },
    );
  }

  getTextTheme() {
    return TextTheme(
      headline3:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline3),
      headline6:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline6),
      bodyText1:
          TextStyle(color: Colors.black, fontSize: responsiveApp.bodyText1),
      bodyText2:
          TextStyle(color: Colors.white, fontSize: responsiveApp.bodyText1),
      headline2:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline2),
    );
  }
}
