import 'package:flutter/material.dart';
import 'package:portfolio_app/drawer.dart';
import 'package:portfolio_app/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override

  final Shader OverallTextGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 132, 0, 255),
      Color.fromARGB(255, 0, 81, 255),
      Color.fromARGB(255, 255, 0, 153),
    ], // <Color>[]
  ).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 187, 41, 41),
    Color.fromARGB(255, 255, 115, 0),
    Color.fromARGB(255, 220, 178, 36)
  ]).createShader(
      Rect.fromLTWH(0, 0, 200.0, 70.0));

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.6),
            Colors.deepPurple.shade200.withOpacity(0.6),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Side_Drawer(),
        appBar: AppBar(
          // automaticallyImplyLeading: false,
        // title: Text('My Portfolio'),
        backgroundColor: Colors.transparent,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHome()),
                    );
                  },
                  child: Icon(
                      Icons.home_outlined
                  ),
                )
            ),
          ],
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
                    'assets/img8.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45),
                  child: Column(children: [


                      Text('About Me', style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = headerGradient
                        // color: Colors.redAccent
                      )),


                    SizedBox(height: 5),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text('Welcome to my portfolio app! Here you will find an overview of my skills, experiences, and projects as a passionate and dedicated professional.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                    fontStyle: FontStyle.italic,

                                ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text('Let me take a moment to introduce myself. I am Sumit Sharma, an enthusiastic Developer. With a background in Information Technology, I have honed my skills in Front-End Developement.'
                                    ,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                    'My journey as has been fueled by a deep curiosity and a drive for continuous growth and innovation.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )

                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
