import 'package:bmsflutter/Activities.dart';
import 'package:bmsflutter/Home.dart';
import 'package:bmsflutter/Music.dart';
import 'package:bmsflutter/Plays.dart';
import 'package:bmsflutter/Sports.dart';
import 'package:flutter/material.dart';
import 'Movie.dart';
import 'package:bmsflutter/Events.dart';
import 'package:bmsflutter/Search.dart';
void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=new TabController(length: 4, vsync: this);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      bottomNavigationBar: new Container(
        height: 50.0,

        color: Colors.white24,
        child:
      new TabBar(
        controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,

          tabs: [ new Icon(Icons.home),
            new IconButton(icon:new Icon( Icons.search), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new Search()));}),
            new Icon(Icons.headset),
            new Icon(Icons.trending_up),

     ])),

      body: new TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children:[
            new Home(),
            new Home(),
            new Music()

          ]
      ),
    );
  }
}

