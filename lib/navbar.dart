// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Colors.blueGrey[800],
      child: ListView(padding: EdgeInsets.fromLTRB(10, 20, 5, 10), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 32,
                backgroundColor: Colors.blueGrey[300],
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              'Chirag Bhardwaj',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[100],
              ),
            ),
            Text(
              'Student',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
                color: Colors.blueGrey[500],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  '10',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[100],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey[500],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '1296',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[100],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ratings',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey[500],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.book_rounded,
                  size: 40,
                  color: Colors.blueGrey[100],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[100]),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.call,
                  size: 40,
                  color: Colors.blueGrey[100],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[100]),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blueGrey[100],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[100]),
                ),
              ],
            ),
            Divider(
              height: 370,
              color: Colors.transparent,
            ),
            Row(
              children: [
                Icon(
                  Icons.dark_mode,
                  size: 40,
                  color: Colors.blueGrey[100],
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.qr_code_2_outlined,
                  size: 40,
                  color: Colors.blueGrey[100],
                ),
              ],
            )
          ],
        )
      ]),
    ));
  }
}
