import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:flutter_badged/badge_position.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBadged Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'FlutterBadged Demo'),
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
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: FlutterBadge(
              icon: Icon(Icons.photo_library),
              itemCount: 2,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text("Home"),
              icon: FlutterBadge(
                icon: Icon(Icons.home),
                itemCount: 3,
                borderRadius: 20.0,
              )),
          BottomNavigationBarItem(
              title: Text("Messages"),
              icon: FlutterBadge(
                icon: Icon(Icons.message),
                itemCount: 33,
                badgeColor: Colors.green,
                position: BadgePosition.topLeft(),
                borderRadius: 20.0,
              )),
          BottomNavigationBarItem(
              title: Text("Favorites"),
              icon: FlutterBadge(
                icon: Icon(Icons.favorite_border),
                itemCount: 333,
                badgeColor: Colors.orange,
                hideZeroCount: false,
                borderRadius: 20.0,
              )),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
