import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Profile One'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          profile(context),
          buttonText(context),
          buttonIcon(context),
        ],
      ),
    );
  }
}

Widget profile(BuildContext context) => Positioned(
      left: 0,
      right: 0,
      height: 300.0,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 25.0, bottom: 80.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFF607ffb), const Color(0xFFa95afc)]),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        Text(
                          "Profile Users",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ralewaymedium',
                              fontSize: 18.0),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/avatar.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Paul Anderson",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontFamily: 'ralewaymedium'),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Programer",
                                style: TextStyle(
                                    color: const Color(0xFFd3d3d3),
                                    fontFamily: 'ralewaymedium'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget buttonText(BuildContext context) => Positioned(
      width: MediaQuery.of(context).size.width,
      top: 260.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ralewaymedium',
                      fontSize: 16.0),
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ralewaymedium',
                      fontSize: 16.0),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ralewaymedium',
                      fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget buttonIcon(BuildContext context) => Positioned(
      width: MediaQuery.of(context).size.width,
      top: 350.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  null;
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/setting.png',
                      height: 60,
                      width: 60,
                    ),
                    Text("Settings")
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  null;
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/profile.png',
                      height: 60,
                      width: 60,
                    ),
                    Text("Profile")
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  null;
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/inbox.png',
                      height: 60,
                      width: 60,
                    ),
                    Text("Inbox")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
