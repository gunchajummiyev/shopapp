import 'package:flutter/material.dart';
import '../constant/constant.dart';
import 'package:shopapp/homepage.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>  HomePage(),
      ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.brown,
      body: Center(
        child: Text (
          'oilean',
       style: TextStyle(fontSize: 50,
        )
       ),
        ),
      );

  }
}
