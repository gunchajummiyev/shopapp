import 'package:flutter/material.dart';
import 'package:shopapp/homepage.dart';
import 'package:shopapp/view/splash.dart';
import 'ItemPage.dart';
import 'constant/constant.dart';
import 'components/custom_appbar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'oilean',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.brown,
      ),
      routes: {
        "/" : (context) => Splash(),
        "itemPage" : (context) => ItemPage(),
     }
   );
  }
}


