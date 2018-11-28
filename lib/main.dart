import 'package:bmsflutter/Activities.dart';
import 'package:bmsflutter/Plays.dart';
import 'package:bmsflutter/Sports.dart';
import 'package:flutter/material.dart';
import 'Movie.dart';
import 'package:bmsflutter/Events.dart';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController controller,controller2;
  var color;
  static var actionslist=["All","Movies","Events","Plays","Sports","Activities"];
  var bodylist=[Colors.grey,Colors.green,Colors.blue,Colors.black,Colors.red,Colors.pink];


  @override
  void initState() {
    // TODO: implement initState
    color=bodylist[0];
    super.initState();
    controller=new TabController(length: actionslist.length, vsync: this);
    controller2=new TabController(length: actionslist.length, vsync: this);
    controller.addListener(listener);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  void listener()
  {
    print("hey");
    color=bodylist[controller.index];
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xFF2E3336),
        titleSpacing: 0.0,
        title: TabBar(
             indicatorColor: Colors.transparent,
            isScrollable: true,
            controller: controller,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            tabs:

            actionslist.map((tab)=> new Text(tab,style:
            new TextStyle(
                fontSize:18.0
            ),)).toList()
        ),


      ),
      bottomNavigationBar: new Container(
        height: 50.0,

        color: Colors.white24,
        child:
      new TabBar(
        controller: controller2,
          indicatorColor: Colors.transparent,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,

          tabs: [ new Icon(Icons.home),
            new Icon(Icons.search),
            new Icon(Icons.headset),
            new Icon(Icons.trending_up),

     ])),

      body: new TabBarView(
          controller: controller,
          children:[
            new All(),
            new Movie(),
            new Events(),
            new Plays(),
            new Sports(),
            new Activities(),
          ]
      ),
    );
  }
}
class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  var movies=["odiyan","marakkar","lucifer","randam"];
  var sports=["Worldcup","la liga","IPL","ISL","Bundesliga"];
  var events=["Sunburn","HardWell","TomorrowLand","Justin bieber"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          alignment: Alignment.center,
          color:Colors.white,
          child: new ListView(
            shrinkWrap: false,
              children:<Widget>[
            new Padding(padding: EdgeInsets.only(top: 10.0,left: 10.0),
              child:Text("Movies",style:
                new TextStyle(
                  fontWeight: FontWeight.bold
                ),)),

            new GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 1.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children:
              movies.map((movie)=>new Container(
                height: 1500.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                        height:100.0,
                        child: Card(
                          elevation:5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child:new ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network("https://assets-news-bcdn.dailyhunt.in/cmd/resize/400x400_60/fetchdata13/images/6e/d8/e2/6ed8e2ce38f44c865263b2f45f96ef77.jpg",
                              fit: BoxFit.fill,),),)
                    ),
                    new Text(movie,style:
                    new TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,

                    ),),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[new Icon(Icons.favorite,color: Colors.red,),
                    new Text("77%",style: new TextStyle(
                        color: Colors.black
                    ),)],
                )],
              ))).toList()
      ),
            new Padding(padding: EdgeInsets.only(top: 10.0,left: 10.0),
                child:Text("Sports",style:
                new TextStyle(
                    fontWeight: FontWeight.bold
                ),)),
                new Container(
                    height: 200.0,

                    child:  ListView(
                      shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                children: sports.map((sports)=>
                new Container(height: 200.0,
                    width: 150.0,
                    child:new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[ new Container(
                          height:110.0,

                            child:Card(
                      elevation:5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                      child:new ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network("https://www.gc.ac.nz/wp-content/uploads/2018/03/sports-tools-640-417.jpg",
                          fit: BoxFit.fill,),),)),
                    new Text(sports,style: new TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[new Icon(Icons.thumb_up,color: Colors.green,),
                    new Text("77%",style: new TextStyle(
                        color: Colors.black
                    ))]
                    )])
                ),

                  ).toList(),)),
            new Padding(padding: EdgeInsets.only(top: 10.0,left: 10.0),
                child:Text("Events",style:
                new TextStyle(
                    fontWeight: FontWeight.bold
                ),)),
            new Container(
                height: 200.0,

                child:  ListView(
                  shrinkWrap: true,

                  scrollDirection: Axis.horizontal,
                  children: events.map((events)=>
                  new Container(height: 200.0,
                      width: 150.0,
                      child:new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[ new Container(
                              height:110.0,

                              child:Card(
                                elevation:5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0)
                                ),
                                child:new ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network("https://res.cloudinary.com/goeventz/image/fetch/c_scale/f_auto,q_auto/https%3A%2F%2Fd24oe5tmwdgz7x.cloudfront.net%2Fevent%2F56590%2Fbanner%2Fevent_1509607203.jpg",
                                    fit: BoxFit.fill,),),)),
                          new Text(events,style: new TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[new Icon(Icons.thumb_up,color: Colors.blue,),
                              new Text("77%",style: new TextStyle(
                                  color: Colors.black
                              ))]
                          )])
                  ),

                  ).toList(),))
              ])
    ));
  }
}
