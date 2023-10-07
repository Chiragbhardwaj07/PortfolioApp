// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                  child: CircleAvatar(
                      radius: 67,
                      backgroundColor: Colors.blueGrey[300],
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ))),
            ),
            // child: CircleAvatar(
            //   backgroundColor: Colors.amber,
            //   backgroundImage: AssetImage('assets/profile.jpg'),
            //   radius: 50.0,
            // ),
            Divider(
              height: 40.0,
              color: Colors.blueGrey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.blueGrey[400],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Chirag Bhardwaj',
              style: TextStyle(
                color: Colors.blueGrey[100],
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
                color: Colors.blueGrey[400],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'AIML',
              style: TextStyle(
                color: Colors.blueGrey[100],
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Designation',
              style: TextStyle(
                color: Colors.blueGrey[400],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Trainee',
              style: TextStyle(
                color: Colors.blueGrey[100],
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
                color: Colors.blueGrey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: const Color.fromRGBO(176, 190, 197, 1)),
                // Icon(Icolor: Colors.blueGrey[200]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
