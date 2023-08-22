import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/drawer.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:portfolio_app/drawer.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 72, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(
      Rect.fromLTWH(0, 0, 200.0, 70.0));
  final Shader highlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 225, 0),

  ]).createShader(
      Rect.fromLTWH(0, 0, 200.0, 70.0)); // <Color>[] // Linear Gradient
  final Shader OverallTextGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 132, 0, 255),
      Color.fromARGB(255, 0, 81, 255),
      Color.fromARGB(255, 255, 0, 153),
    ], // <Color>[]
  ).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  myWorks(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = OverallTextGradient),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        ) // Container
      ],
    ); // Row
  }

  mySkills(icon, text) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.black,
        shape: CircleBorder(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                    foreground: Paint()..shader = highlightGradient,
                    fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBodyBehindAppBar: true,
      drawer: Side_Drawer(),
      appBar: AppBar(
        // title: Text('My Portfolio'),
        backgroundColor: Colors.transparent,
      ),
      // appBar: AppBar(
      //   leading: PopupMenuButton(
      //       icon: Icon(Icons.menu),
      //       color: Colors.white,
      //       itemBuilder: (context) => [
      //             PopupMenuItem(
      //                 child: TextButton(
      //                     child: Text(
      //                       'Projects',
      //                       style: TextStyle(color: Colors.black),
      //                     ),
      //                     onPressed: () {})),
      //             PopupMenuItem(
      //                 child: TextButton(
      //                     child: Text(
      //                       'About',
      //                       style: TextStyle(color: Colors.black),
      //                     ),
      //                     onPressed: () {}))
      //           ]),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 19, 16, 16),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          body: Container(
            child: Stack(
              children: [
                Container(
                  child: ShaderMask(
                    shaderCallback: (bound) {
                      return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(
                              Rect.fromLTRB(0, 0, bound.width, bound.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/img10.jpg',
                      height: 500,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.45),
                    child: Column(children: [
                      Text(
                        'Sumit Sharma',
                        style: TextStyle(
                          fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            // foreground: Paint()..shader = headerGradient
                        ),

                      ),

                      SizedBox(height: 5),
                      
                      AnimatedTextKit(animatedTexts: [
                        TypewriterAnimatedText('Coder', textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                        TypewriterAnimatedText('Developer', textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),

                      ]),
                      


                    ]))
              ],
            ),
          ),
          builder: (context, state) {
            return Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        myWorks('5+', 'PROJECTS'),
                        // myWorks('1', 'abc'),
                        // myWorks('1', 'abc'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Skills',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySkills(FlutterDEVICON.flutter_plain, 'Flutter'),
                            mySkills(FlutterDEVICON.android_plain, 'Dart'),
                            mySkills(FontAwesomeIcons.js, 'Javascript')
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySkills(FontAwesomeIcons.html5, 'HTML'),
                            mySkills(FontAwesomeIcons.css3, 'CSS'),
                            mySkills(FontAwesomeIcons.nodeJs, 'NodeJS')
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            mySkills(FlutterDEVICON.cplusplus_line, 'C++'),
                            mySkills(FlutterDEVICON.c_line, 'C'),

                          ],
                        ),
                      ],
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }
}
