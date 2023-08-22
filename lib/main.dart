// import 'package:flutter/material.dart';
// import 'home.dart';
// void main() {
//   runApp (
//       MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: 'home',
//       routes: {
//       'home': (context) => MyHome(),
//       // 'about': (context) => About(),
//       },
//       ));
//   }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:portfolio_app/home.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//                 MyHome()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child:FlutterLogo(size:MediaQuery.of(context).size.height)
//     );
//   }
// }

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/img9.png', height: 30,),
                Text('My Portfolio', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
              ],
            ),
            nextScreen: MyHome(),
            splashTransition: SplashTransition.slideTransition,
            // pageTransitionType: PageTransitionType.rotate,
            backgroundColor: Colors.blue));
  }
}


