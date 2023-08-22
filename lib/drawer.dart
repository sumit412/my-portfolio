import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/about.dart';
import 'package:portfolio_app/projects.dart';
import 'package:url_launcher/link.dart';

class Side_Drawer extends StatelessWidget {
  Side_Drawer({super.key});
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }){
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: TextStyle(color: Colors.white)),
      hoverColor: Colors.white60,
      onTap: onClicked ,
    );
  }

  void selectedItem(BuildContext context, int index){
    switch(index){
      case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AboutMe()),
      );
      break;
      case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyProjects()),
      );
      break;
    }
  }

  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sumit Sharma'),
              accountEmail: Text('sumitsharma19938@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.asset('assets/img5.png',
                    fit: BoxFit.cover,)),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[800]
              ),
            ),

            buildMenuItem(
                text: 'About Me',
                icon: Icons.account_box_outlined,
              onClicked: () => selectedItem(context, 0)),

            buildMenuItem(
                text: 'Projects',
                icon: FontAwesomeIcons.diagramProject,
              onClicked: () => selectedItem(context, 1),
            ),

           Container(
             margin: EdgeInsets.only(
                 top: MediaQuery.of(context).size.height * 0.50),
             child: Padding(
               padding: const EdgeInsets.only(left: 30.0, right: 30.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Link(
                       uri: Uri.parse('https://www.linkedin.com/in/sumit-sharma-760393243'),

                       builder: (context, followLink) => IconButton(
                           onPressed: followLink,
                           icon: Icon(FontAwesomeIcons.linkedin, color: CupertinoColors.systemBlue, size: 40,))),
                   Link(
                       uri: Uri.parse('https://github.com/sumit412'),
                       builder: (context, followLink) => IconButton(
                           onPressed: followLink,
                           icon: Icon(FontAwesomeIcons.github, color: Colors.white,size: 40,))),
                   Link(
                       uri: Uri.parse('https://instagram.com/sumit_412?igshid=MzNlNGNkZWQ4Mg=='),
                       builder: (context, followLink) => IconButton(
                           onPressed: followLink,
                           icon: Icon(FontAwesomeIcons.instagram, color: Colors.purple, size: 40,))),
                   
                   
                   
                   
                   
                   
                   
                   
                   // IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.github, color: Colors.white, size: 40,)),
                   // IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.instagram, color: Colors.purple, size: 40,)),
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}

