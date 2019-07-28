import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[600],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Disaster.jpg'),
              ),
              Text(
                "Jayesh Nirve",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                "SENIOR DEVELOPER",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal[100],
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 150.0, height: 20.0, child: Divider(color: Colors.teal[100]),),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[700],
                    ),
                    title:Text(
                        "+91 82084 96432",
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 17,
                        ),
                      ) ,
                  ),
                ),
              
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[700],
                    ),
                    title: Text(
                      "nitinnirve@gmail.com",
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}

