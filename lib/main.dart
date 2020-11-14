import 'package:flutter/material.dart';
import 'package:navigation_bar/screen/bag.dart';
import 'package:navigation_bar/screen/favorite.dart';
import 'package:navigation_bar/screen/home_page.dart';
import 'package:navigation_bar/screen/profile.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int newindex = 0;

  final tab = [
    HomeScreen(),
    Favorite(),
    Bag(),
    Profile(),

    // Center(child: Text("Favorite"),),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[newindex],
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: newindex,
          onTap: (index){
            setState(() {
              newindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: new Text("Home")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.favorite), title: new Text("Favorite")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.business_center), title: new Text("Bag")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person_outline),
                title: new Text("Profile")),
          ]),
    );
  }
}





