import 'dart:async';
import 'package:amazing_ecommerce/UI/Widgets/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// now if you want to make animated splash screen you should use stateful widget

class AnimatedSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
    var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = Duration(seconds: 4);
    return Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }
    @override
    dispose() {
      animationController.dispose(); // you need this
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Image.asset(
                    'assets/images/powered_by.png',
                    height: 32.0,
                    // fit: BoxFit.fitWidth,
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Image.asset(
                'assets/images/log.png',
                width: animation.value * 270,
                height: animation.value * 270,
              ),
            ],
          ),
        ],
      ),
    );
  }
    void navigationPage() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
    }
}
