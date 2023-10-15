// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/vscode_icons.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/logos.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star, icon) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Iconify(
                    icon,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    lang,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        launch('https://github.com/Chiragbhardwaj07');
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My Projects'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard('FLUTTER', 'Portfolio App', 'A personal portfolio',
                  '10', Logos.flutter),
              projetCard('FLUTTER', 'Quiz App', 'App for MCQ Quiz', '9',
                  Logos.flutter),
              projetCard(
                  'PYTHON',
                  'AI Legal Doc maker',
                  'AI creates legally binding documents',
                  '8',
                  VscodeIcons.file_type_python),
              projetCard(
                'C++',
                'Tic-Tac-Toe',
                'Simple game',
                '7',
                VscodeIcons.file_type_cpp3,
              ),
              projetCard('PYTHON', 'Social Media App', 'Interact with friends',
                  '9', VscodeIcons.file_type_python),
              projetCard(
                'C++',
                'Calculator',
                'Basic arithmetic operations',
                '8',
                VscodeIcons.file_type_cpp3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
