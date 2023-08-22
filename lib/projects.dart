import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'drawer.dart';
import 'home.dart';


class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  bool _customTileExpanded = false;
  @override
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
          title: Center(child: Text('My Projects')),
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
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(

                  children: <Widget>[
               ExpansionTile(
              title: Text('Simple Dice App',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
                 trailing: Icon(

                   _customTileExpanded
                       ? FontAwesomeIcons.dice
                       : FontAwesomeIcons.dice,
                   color: Colors.white,
                 ),
                 onExpansionChanged: (bool expanded) {
                   setState(() {
                     _customTileExpanded = expanded;
                   });
                 },
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('A very simple app that displays a random number upon tapping the dice',
                  style: TextStyle(
                    color: CupertinoColors.systemYellow,
                    fontSize: 30
                  ),
                  ),
                ),
              ],

      ),
                    Divider(height: 50, color: Colors.white, thickness: 2.5,),

                    // SizedBox(height: 15,),

                    ExpansionTile(
                      title: Text('Crystal Ball App',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      trailing: Icon(

                        _customTileExpanded
                            ? FontAwesomeIcons.bowlingBall
                            : FontAwesomeIcons.bowlingBall,
                        color: Colors.white,
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded = expanded;
                        });
                      },

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('A very simple app that displays a random answer upon tapping the ball',
                            style: TextStyle(
                                color: CupertinoColors.systemYellow,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ],
      ),

                   Divider(height: 50, color: Colors.white, thickness: 2.5,),

                    // SizedBox(height: 15,),

                    ExpansionTile(
                      title: Text('Annsylum Writers',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      trailing: Icon(

                        _customTileExpanded
                            ? FontAwesomeIcons.noteSticky
                            : FontAwesomeIcons.noteSticky,
                        color: Colors.white,
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded = expanded;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('A website that can provide you help with your assignments. Its more of Front-End with database connectivity for login and signup.',
                            style: TextStyle(
                                color: CupertinoColors.systemYellow,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ],
                    ),

                    Divider(height: 50,thickness: 2.5, color: Colors.white,),

                    ExpansionTile(
                      title: Text('My Portfolio App',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      trailing: Icon(

                        _customTileExpanded
                            ? FontAwesomeIcons.dev
                            : FontAwesomeIcons.dev,
                        color: Colors.white,
                      ),
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded = expanded;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('An app that showcases my skills, projects and experiences.',
                            style: TextStyle(
                                color: CupertinoColors.systemYellow,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ],

                    ),
                    Divider(height: 50, color: Colors.white, thickness: 2.5,),

                  ],
      ),
            ),
          ),
        ),
      ),
    );
  }
}
