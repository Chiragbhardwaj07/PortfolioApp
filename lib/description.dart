// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text('About me'),
          SizedBox(
            width: 175,
          ),
          Icon(Icons.info),
        ]),
        centerTitle: true,

        backgroundColor: Colors.blueGrey[800],
        // elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assets/profile.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, I am',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    ),
                    GradientText(
                      'Chirag Bhardwaj',
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.w900),
                      gradient: LinearGradient(colors: [
                        Colors.purple,
                        // Colors.indigo,
                        Colors.blue,
                        Colors.cyan,
                      ]),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 200, width: 500,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      // color: Color(0xFF7978FF),
                      margin: EdgeInsets.fromLTRB(0, 20, 50, 0),

                      child: ListView(children: [
                        Text(
                          'I am a sophmore in Ajay Kumar Garg Engineering College studying Artificial Intelligence & Machine Learning. I am currently a trainee in TEAM CONNATUS. My areas of intrest include App Devlopment, Competetive Programming and Open Source. ',
                          style: TextStyle(
                            color: Colors.blueGrey[100],
                            fontSize: 20,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.blueGrey[800],
                    ),
                    Center(
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'Connect:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[100],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      launch(
                                          'https://www.instagram.com/chiragbhardwaj07/');
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.instagram,
                                      color: Colors.blueGrey[100],
                                    )),
                                IconButton(
                                    onPressed: () {
                                      launch('https://www.facebook.com/');
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.blueGrey[100],
                                    )),
                                IconButton(
                                    onPressed: () {
                                      launch('https://twitter.com/akaChiragB');
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.twitter,
                                      color: Colors.blueGrey[100],
                                    )),
                                IconButton(
                                    onPressed: () {
                                      launch(
                                          'https://www.linkedin.com/in/chiragbhardwaj07/');
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.linkedin,
                                      color: Colors.blueGrey[100],
                                    )),
                                IconButton(
                                    onPressed: () {
                                      launch(
                                          'https://github.com/Chiragbhardwaj07');
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.github,
                                      color: Colors.blueGrey[100],
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
