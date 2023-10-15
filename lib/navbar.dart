// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_c/projects.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Colors.black,
      child: ListView(padding: EdgeInsets.fromLTRB(10, 20, 5, 10), children: [
        UserAccountsDrawerHeader(
          accountName: const Text(
            'Chirag Bhardwaj',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          accountEmail: const Text(
            ' chiragbhardwaj07',
            style:
                TextStyle(fontStyle: FontStyle.italic, color: Colors.white70),
          ),
          currentAccountPicture: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/navbar.jpg'), fit: BoxFit.cover)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'About',
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 40,
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                'Projects',
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
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
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              iconColor: Colors.white,
              textColor: Colors.white,
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
