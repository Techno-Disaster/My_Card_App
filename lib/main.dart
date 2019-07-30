import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.teal),
    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
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
              "THE DISASTER.",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff474747),
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 20.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 10, 70.0, 0),
              child: Container(
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.teal[50],
                  elevation: 20,
                  highlightColor: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16.5, 16.5, 16.5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0, 30.0, 0),
                          child: Icon(
                            Icons.call,
                            color: Colors.teal[700],
                          ),
                        ),
                        Text(
                          "+91 88888 88888",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                            color: Colors.teal[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    UrlLauncher.launch('tel:8888888888');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 16, 70.0, 0),
              child: Container(
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.teal[50],
                  elevation: 20,
                  highlightColor: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16.5, 16.5, 16.5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0, 20.0, 0),
                          child: Icon(
                            Icons.email,
                            color: Colors.teal[700],
                          ),
                        ),
                        Text(
                          "nitinnirve@gmail.com",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontFamily: 'Source Sans Pro',
                            color: Colors.teal[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    UrlLauncher.launch('mailto:nitinnirve@gmail.com');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 16, 70.0, 0),
              child: Container(
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.teal[50],
                  elevation: 20,
                  highlightColor: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16.5, 16.5, 16.5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0, 72.0, 0),
                          child: Icon(
                            Icons.code,
                            color: Colors.teal[700],
                          ),
                        ),
                        Text(
                          "Github",
                          style: TextStyle(
                              fontSize: 19.0,
                              fontFamily: 'Source Sans Pro',
                              letterSpacing: 1.0,
                              color: Colors.teal[900]),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    UrlLauncher.launch('https://github.com/Techno-Disaster');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 16, 70.0, 0),
              child: Container(
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.teal[50],
                  elevation: 20,
                  highlightColor: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16.5, 16.5, 16.5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0, 40.0, 0),
                          child: Icon(
                            Icons.contacts,
                            color: Colors.teal[700],
                          ),
                        ),
                        Text(
                          "Other Contacts",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontFamily: 'Source Sans Pro',
                            letterSpacing: 1.0,
                            color: Colors.teal[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    UrlLauncher.launch('http://technodisaster.me/');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
