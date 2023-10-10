// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_c/projects.dart';

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
                  '6',
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
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 40,
                color: Colors.blueGrey[100],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'About',
              ),
              textColor: Colors.blueGrey[100],
              iconColor: Colors.blueGrey[100],
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 40,
                color: Colors.blueGrey[100],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'Projects',
              ),
              textColor: Colors.blueGrey[100],
              iconColor: Colors.blueGrey[100],
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProject()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.call,
                size: 40,
                color: Colors.blueGrey[100],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              iconColor: Colors.blueGrey[100],
              textColor: Colors.blueGrey[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'Contact Me',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            Divider(),
          ],
        )
      ]),
    ));
  }
}
