import 'package:amazing_ecommerce/Constants/constants.dart';
import 'package:amazing_ecommerce/UI/Widgets/splash_screen.dart';
import 'package:amazing_ecommerce/UI/main_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        // here we will make login page
        MAIN_UI: (BuildContext context) => MainUI(),
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}


class LandPage extends StatelessWidget {
  // now we will handle to active firebase
final Future<Firebase> _initialization = Firebase.initializeApp() as Future<Firebase>;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
        // this is if snapshot has error
        if(snapshot.hasError){
          return Scaffold(
            body: Center(
              child: Text("Error : ${snapshot.error}"),
            ),
          );
        }
        if(snapshot.connectionState == ConnectionState.done){
          return Scaffold(
            body: Container(
              child: Center(
                child: Text("Firebase App Initilized"),
              ),
            ),
          );
        }
        return Scaffold(
          body: Center(
            child: Text("Initializaing App ...."),
          ),
        );
      },
    );
  }
}
