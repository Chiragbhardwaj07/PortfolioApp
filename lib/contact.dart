import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('Contact Info'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.blueGrey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Phone No.',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '9910832258',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.blueGrey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'E-mail',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'chiragbhardwaj1u@gmail.com',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_city,
                      size: 30,
                      color: Colors.blueGrey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ghaziabad',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 40,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
