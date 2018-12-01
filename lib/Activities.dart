import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  var dates = ["Today", "Tomorrow", "Weekend", "Music", "Meetups"];
  var events = ["Wonderla", "ZOO", "Film City", "Surfing"];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Container(
          height: 90.0,
          child: new Material(
              elevation: 5.0,
              child: new Column(children: <Widget>[
                new Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    margin: EdgeInsets.all(5.0),
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: new Text("Activities")),
                new Container(
                  height: 5.0,
                  decoration: new BoxDecoration(
                      border: BorderDirectional(
                          top: new BorderSide(color: Colors.grey.shade300))),
                ),
                new Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                              width: 100.0,
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.equalizer),
                                    new Text("Filters")
                                  ])),
                          new Container(
                            height: 30.0,
                            decoration: new BoxDecoration(
                                border: new BorderDirectional(
                                    start: BorderSide(
                                        color: Colors.grey.shade500))),
                          ),
                          new Container(
                              width: 100.0,
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Icon(Icons.place),
                                    new Text("Venues")
                                  ])),
                        ])),
              ]))),
      new Expanded(
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: events
                .map((event) =>
            new Container(
              child: new Card(
                elevation: 1.0,
                child: new Column(
                  children: <Widget>[
                    new Image.network(
                        "https://in.bmscdn.com/nmcms/media-desktop-wonderla-amusement-park-kochi-2018-10-31-t-14-24-29.jpeg"),
                    new SizedBox(
                      height: 10.0,
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                new Text(
                                  "FEB",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                                new Text(
                                  "16",
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new Text(
                                  "SAT",
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )),
                        new Container(
                          height: 40.0,
                          width: 20.0,
                          decoration: new BoxDecoration(
                              border: BorderDirectional(
                                  start: new BorderSide(
                                      color: Colors.grey.shade300))),
                        ),
                        new Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  event,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                new SizedBox(
                                  height: 5.0,
                                ),
                                new Text(
                                  "Kochi",
                                  style: new TextStyle(fontSize: 10.0),
                                )
                              ],
                            )),
                        new Expanded(
                            flex: 2,
                            child: new Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, right: 10.0),
                              height: 50.0,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Color(0xFF01CFB7),
                                child: new Text(
                                  "Book",
                                  style: new TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                      ],
                    ),
                    new Container(
                      height: 2.0,
                      margin: EdgeInsets.only(top: 10.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              top: new BorderSide(
                                  color: Colors.grey.shade300))),
                    ),
                    new Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Container(
                              alignment: Alignment.center,
                              height: 25.0,
                              padding: EdgeInsets.all(5.0),
                              decoration: new BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white70),
                              child: Text("Music")),
                          new Text(
                            "RS. 1200 onwards",
                            style: new TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
                .toList(),
          ))
    ]);
  }
}
