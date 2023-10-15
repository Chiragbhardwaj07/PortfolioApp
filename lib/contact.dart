// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  bool _hasCallSupport = false;
  Future<void>? _launched;
  String _phone = '';

  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Contact Me'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                        Text(
                          'Phone',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '9910832258',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '10AM - 6PM',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () async {
                                  final url =
                                      Uri(scheme: 'tel', path: '9910832258');
                                  if (await canLaunchUrl(url)) {
                                    launchUrl(url);
                                  }
                                },
                                icon: Icon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color(0xff262628),
                ),
              ),
              Container(
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
                        Text(
                          'Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '9910832258',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '10AM - 6PM',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () async {
                                  final url = Uri(
                                    scheme: 'sms',
                                    path: '9910832258',
                                    queryParameters: <String, String>{
                                      'body':
                                          Uri.encodeComponent('HelloChirag'),
                                    },
                                  );

                                  if (await canLaunchUrl(url)) {
                                    launchUrl(url);
                                  }
                                },
                                icon: Icon(
                                  FontAwesomeIcons.message,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color(0xff262628),
                ),
              ),
              Container(
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
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'chiragbhardwaj1u@gmail.com',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '24hrs',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {
                                  final Uri emailLaunchUri = Uri(
                                    scheme: 'mailto',
                                    path: 'chiragbhardwaj1u@gmail.com',
                                    query:
                                        encodeQueryParameters(<String, String>{
                                      'subject': 'Introduction',
                                    }),
                                  );

                                  launchUrl(emailLaunchUri);
                                },
                                icon: Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color(0xff262628),
                ),
              ),
              Container(
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
                        Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Ghaziabad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '10AM - 6PM',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Weekdays only',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {
                                  launch(
                                      'https://maps.app.goo.gl/suqs8AZFyyo9kydS7');
                                },
                                icon: Icon(
                                  Icons.location_city,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color(0xff262628),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContactCard(lang, title, description, icon) {
    return Container(
      width: double.infinity,
      height: 220,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
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
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(icon),
                  ),
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }
}
