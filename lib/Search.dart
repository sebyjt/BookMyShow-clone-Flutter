import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var movies = ["Odiyan", "2.0", "Joseph", "Creed2"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 10; i++) {
      movies.add("Randamoozham");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2E3336),
        title: new Container(
          height: 30.0,
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, left: 7.0, right: 7.0),
          decoration: new BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
          child: new Row(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              new Expanded(
                flex: 6,
                child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5.0),
                    hintText: "Search Movies, Events,Plays Sports e...",
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
      body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                height: 40.0,
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(top: 20.0, left: 10.0, bottom: 5.0),
                child: new Text(
                  "TRENDING SEARCHES",
                  style: new TextStyle(
                color: Colors.grey,
                  ),
            ),
              ),
              new Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 10.0),
                    children: movies
                        .map((movie) =>
                    new Container(
                      margin: EdgeInsets.all(5.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Icon(
                            Icons.movie,
                            color: Colors.grey,
                          ),
                          new Expanded(
                              child: new Column(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(movie)),
                                  new Container(
                                    height: 20.0,
                                    decoration: new BoxDecoration(
                                        border: Border(
                                            bottom: new BorderSide(
                                                color: Colors.grey))),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ))
                        .toList(),
                  ))
            ],
          )),
    );
  }
}
