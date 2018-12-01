import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  bool nowshowing = true;

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      new Container(
        child: Material(
          elevation: 5.0,
          child: new Column(
            children: <Widget>[
              new Image.network(
                  "https://i0.wp.com/www.socialnews.xyz/wp-content/uploads/2018/10/31/Zero-Movie-New-Poster-.jpg?resize=1024%2C576&quality=90&zoom=1&ssl=1"),
              new Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    width: 220.0,
                    decoration: new BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: new BorderRadius.circular(5.0)),
                    height: 40.0,
                    child: (nowshowing)
                        ? new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              width: 110.0,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: new Border.all(
                                      color: Colors.grey.shade400),
                                  borderRadius: new BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      bottomLeft: Radius.circular(5.0))),
                              child:
                              new Center(child: Text("Now Showing")),
                            ),
                            onTap: () {
                              setState(() {
                                nowshowing = true;
                              });
                            },
                          ),
                          new GestureDetector(
                              child: Container(
                                width: 110.0,
                                padding: EdgeInsets.all(10.0),
                                decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: new BorderRadius.only(
                                        topRight: Radius.circular(5.0),
                                        bottomRight:
                                        Radius.circular(5.0))),
                                child: new Center(
                                    child: Text("Coming Soon")),
                              ),
                              onTap: () {
                                setState(() {
                                  nowshowing = false;
                                });
                              })
                        ])
                        : new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: 110.0,
                            decoration: new BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: new BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0))),
                            child: new Center(child: Text("Now Showing")),
                          ),
                          onTap: () {
                            setState(() {
                              nowshowing = true;
                            });
                          },
                        ),
                        new GestureDetector(
                            child: Container(
                              width: 110.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: new BoxDecoration(
                                  border: new Border.all(
                                      color: Colors.grey.shade400),
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topRight: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0))),
                              child:
                              new Center(child: Text("Coming Soon")),
                            ),
                            onTap: () {
                              setState(() {
                                nowshowing = false;
                              });
                            }),
                      ],
                    ),
                  )),
              (nowshowing)
                  ? new Container(
                padding: EdgeInsets.only(
                    top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                          width: 100.0,
                          child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
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
                                Icon(Icons.movie),
                                new Text("Cinemas")
                              ])),
                    ]),
              )
                  : new Container(
                height: 30.0,
              )
            ],
          ),
        ),
      ),
      (nowshowing)
          ? new Padding(
          padding: EdgeInsets.only(top: 10.0), child: NowShowing())
          : new Padding(
          padding: EdgeInsets.only(top: 10.0), child: Comingsoon()),
    ]);
  }
}

class NowShowing extends StatefulWidget {
  @override
  _NowShowingState createState() => _NowShowingState();
}

class _NowShowingState extends State<NowShowing> {
  var Movies = ["Joseph", "2.0", "kuprasidha", "laddoo"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: Movies
          .map((movie) =>
      new Container(
        child: new Card(
            child: Column(
              children: <Widget>[
                new Stack(children: <Widget>[
                  Image.network(
                      "https://img.manoramaonline.com/content/dam/mm/en/entertainment/movie-reviews/images/2018/11/16/joseph-review-1.jpg"),
                  new Positioned(
                    child: new Container(
                        height: 50.0,
                        width: 80.0,
                        decoration: new BoxDecoration(
                            color: Colors.black.withOpacity(.6),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: new Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  new Text(
                                    "88%",
                                    style:
                                    new TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              new Text("7000 votes",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 10.0))
                            ])),
                    bottom: 10.0,
                    right: 10.0,
                  )
                ]),
                new Container(
                  padding: EdgeInsets.all(5.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            movie,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                          new Text("malayalam")
                        ],
                      ),
                      new RaisedButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: new Text(
                          "Book",
                          style: new TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  height: 2.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          top:
                          new BorderSide(color: Colors.grey.shade300))),
                ),
                new Container(
                    height: 30.0,
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.topLeft,
                    child: new Container(
                      alignment: Alignment.center,
                      height: 25.0,
                      width: 25.0,
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.white70),
                      child: Text("2D"),
                    ))
              ],
            )),
      ))
          .toList(),
    );
  }
}

class Comingsoon extends StatefulWidget {
  @override
  _ComingsoonState createState() => _ComingsoonState();
}

class _ComingsoonState extends State<Comingsoon> {
  @override
  var Movies = ["Odiyan", "Pretham 2", "irupathonnam nottandu", "maari 2"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: Movies
          .map((movie) =>
      new Container(
        child: new Card(
            child: Column(
              children: <Widget>[
                new Stack(children: <Widget>[
                  Image.network(
                      "https://english.mathrubhumi.com/polopoly_fs/1.3223910.1539517361!/image/image.jpg_gen/derivatives/landscape_728_450/image.jpg"),
                  new Positioned(
                    child: new Container(
                        height: 50.0,
                        width: 80.0,
                        decoration: new BoxDecoration(
                            color: Colors.black.withOpacity(.6),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: new Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Icon(
                                    Icons.thumb_up,
                                    color: Colors.green,
                                  ),
                                  new Text(
                                    "29k",
                                    style:
                                    new TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              new Text("interested",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 10.0))
                            ])),
                    bottom: 10.0,
                    right: 10.0,
                  )
                ]),
                new Container(
                  height: 80.0,
                  padding: EdgeInsets.all(5.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text(
                            movie,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                          new Text(
                            "Malayalam,Thriller",
                            style: new TextStyle(
                                fontSize: 10.0, color: Colors.grey),
                          ),
                          new Text(
                            "Action,Drama",
                            style: new TextStyle(
                                fontSize: 10.0, color: Colors.grey),
                          ),
                          new Text(
                            "14 december",
                            style: new TextStyle(
                              fontSize: 10.0,
                            ),
                          )
                        ],
                      ),
                      new FlatButton(
                          onPressed: () {},
                          color: Colors.transparent,
                          child: new Container(
                            padding: EdgeInsets.all(5.0),
                            width: 120.0,
                            decoration: new BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: new Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.thumb_up,
                                  color: Colors.grey.shade300,
                                  size: 20.0,
                                ),
                                new Text("Interested")
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                new Container(
                  height: 2.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          top:
                          new BorderSide(color: Colors.grey.shade300))),
                ),
                new Container(
                    height: 30.0,
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.topLeft,
                    child: new Container(
                      alignment: Alignment.center,
                      height: 25.0,
                      width: 25.0,
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.white70),
                      child: Text("2D"),
                    ))
              ],
            )),
      ))
          .toList(),
    );
  }
}
