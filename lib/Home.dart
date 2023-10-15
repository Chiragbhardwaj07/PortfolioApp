// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/vscode_icons.dart';
// ignore: depend_on_referenced_packages
import 'package:colorful_iconify_flutter/icons/logos.dart';
import 'package:portfolio_c/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0.0,
      ),
      drawer: NavBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                  child: CircleAvatar(
                      radius: 67,
                      backgroundColor: Colors.white60,
                      child: CircleAvatar(
                        radius: 65.4,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                      ))),
            ),
            Divider(
              height: 40.0,
              color: Colors.black54,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Chirag Bhardwaj',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Branch',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'AIML',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Designation',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Trainee',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Skills',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Iconify(
                  VscodeIcons.file_type_cpp3,
                  size: 40,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Iconify(
                  VscodeIcons.file_type_python,
                  size: 40,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Iconify(
                  Logos.html_5,
                  size: 40,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Iconify(
                  Logos.css_3,
                  size: 40,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Iconify(
                  Logos.javascript,
                  size: 40,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Iconify(
                  Logos.flutter,
                  size: 40,
                ),
                SizedBox(
                  width: 15.0,
                ),
                //   Iconify(
                //     VscodeIcons.file_type_dartlang,
                //   ),
                //   SizedBox(
                //     width: 15.0,
                //   ),
                //   Iconify(
                //     Logos.java,
                //   ),
                //   SizedBox(
                //     width: 15.0,
                //   ),
                //   Iconify(
                //     Logos.kotlin,
                //   ),
              ],
            ),
            SizedBox(
              height: 70.0,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },

                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Know more',
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, primary: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
