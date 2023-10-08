// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/fa.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:iconify_flutter/icons/cib.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        // elevation: 0,
      ),
      body: Container(
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
                    Text('Chirag Bhardwaj',
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
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
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Iconify(Bi.instagram),
                            Iconify(Bi.facebook),
                            Iconify(Fa.twitter),
                            Iconify(Uiw.linkedin),
                            Iconify(Cib.github),
                          ]),
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
