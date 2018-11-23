import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;
  var color;
  static var actionslist=["All","Movies","Events","Plays","Sports","Activities"];
  var bodylist=[Colors.grey,Colors.green,Colors.blue,Colors.black,Colors.red,Colors.pink];


  @override
  void initState() {
    // TODO: implement initState
    color=bodylist[0];
    super.initState();
    controller=new TabController(length: actionslist.length, vsync: this);
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
        controller: controller,
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
            new All(),
            new All(),
            new All(),
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
  var movies=["odiyan","marakkar","lucifer","randam","ittimani","big brother","a","b","c"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          alignment: Alignment.center,
          color:Colors.white,
          padding: EdgeInsets.only(left:10.0,right:10.0,top: 10.0),
          child: new GridView.count(
              childAspectRatio: .75,
              crossAxisCount: 2,
              children:
              movies.map((movie)=>new Container(
                height: 200.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                        height:150.0,
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
    ));
  }
}
