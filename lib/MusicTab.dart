import 'package:flutter/material.dart';

class MusicTab extends StatefulWidget {
  @override
  _MusicTabState createState() => _MusicTabState();
}

class _MusicTabState extends State<MusicTab> {
  var Songs = ["Halsey", "SunFlower", "Bad Liar"];
  var browse = ["Discover India", "Artists", "Languages", "Moods", "Genres"];
  var newReleases = ["Come Play Outside", "Halsey", "SunFlower", "Bad Liar"];

  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey.shade100,
        body: new ListView(
          shrinkWrap: false,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
              height: 50.0,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)),
              child: new Row(
                children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(5.0),
                        hintText: "Search for Music or talk shows",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding(
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Editors Pick",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new GestureDetector(
                          onTap: () {},
                          child: Text(
                            "show all",
                            style: new TextStyle(color: Colors.blue),
                          ))
                    ])),
            new Container(
                height: 450.0,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(
                    top: 20.0, left: 15.0, right: 15.0, bottom: 20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                    "https://images.genius.com/05d1442877119e6c8f0674f698a66010.1000x1000x1.jpg")),
                            new Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Text(
                                  "Music | English",
                                  style: new TextStyle(color: Colors.grey),
                                )),
                            new Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Text(
                                  "Happy now",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            new Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0, top: 5.0, bottom: 10.0),
                                child: Text(
                                  "English | 2:34 hrs",
                                  style: new TextStyle(color: Colors.grey),
                                )),
                          ]),
                      new Positioned(
                        child: Image.network(
                          "https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png",
                          height: 60.0,
                          width: 60.0,
                        ),
                        bottom: 90.0,
                        right: 5.0,
                      )
                    ],
                  ),
                )),
            new Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        flex: 2,
                        child: new Container(
                            padding: EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: new Image.network(
                                  "https://www.teksteshqip.com/img_upz/allart_full/70253.jpg"),
                            ))),
                    new Expanded(
                      flex: 2,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "Music | English",
                            style: new TextStyle(color: Colors.grey),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Text(
                            "Best of Maroon 5",
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Text(
                            "Multi | 1:17 hrs",
                            style: new TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    new Expanded(
                        flex: 1,
                        child: new Image.network(
                          'https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png',
                          height: 30.0,
                          width: 30.0,
                        ))
                  ],
                ),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        flex: 2,
                        child: new Container(
                            padding: EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: new Image.network(
                                  "http://cache.umusic.com/_sites/zedd.net/images/og.jpg"),
                            ))),
                    new Expanded(
                      flex: 2,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "Music | English",
                            style: new TextStyle(color: Colors.grey),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Text(
                            "Best of Zedd",
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Text(
                            "Multi | 1:17 hrs",
                            style: new TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    new Expanded(
                        flex: 1,
                        child: new Image.network(
                          'https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png',
                          height: 30.0,
                          width: 30.0,
                        ))
                  ],
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              height: 200.0,
              color: Colors.white,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "Browse by",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  new Expanded(
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                        children: browse
                            .map((br) =>
                        new Container(
                          margin: EdgeInsets.all(10.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Stack(children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.network(
                                    'https://www.indianholiday.com/pictures/tourgallery/371/discover-india-1926.jpg',
                                    width: 150.0,
                                    height: 100.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Positioned(
                                  top: 5.0,
                                  left: 5.0,
                                  child: new Text(
                                    br,
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ]),
                              new Text(br)
                            ],
                          ),
                        ))
                            .toList(),
                  ))
                ],
              ),
            ),
            new Padding(
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Trending Now",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new GestureDetector(
                          onTap: () {},
                          child: Text(
                            "show all",
                            style: new TextStyle(color: Colors.blue),
                          ))
                    ])),
            new ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: Songs
                  .map(
                    (song) =>
                new Container(
                  margin: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 20.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                            flex: 2,
                            child: new Container(
                                padding: EdgeInsets.all(20.0),
                                child: Stack(children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    child: new Image.network(
                                        "https://streamd.hitparade.ch/cdimages/halsey-without_me_s.jpg"),
                                  ),
                                  new Positioned(
                                      top: 5.0,
                                      left: 5.0,
                                      child: new Container(
                                        padding: EdgeInsets.all(3.0),
                                        alignment: Alignment.center,
                                        color: Colors.greenAccent,
                                        child: new Text(
                                          "UPDATED",
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                      ))
                                ]))),
                        new Expanded(
                          flex: 2,
                          child: new Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "Music | English",
                                style:
                                new TextStyle(color: Colors.grey),
                              ),
                              new SizedBox(
                                height: 10.0,
                              ),
                              new Text(
                                "$song",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              new SizedBox(
                                height: 10.0,
                              ),
                              new Text(
                                "Multi | 1:17 hrs",
                                style:
                                new TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        new Expanded(
                            flex: 1,
                            child: new Image.network(
                              'https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png',
                              height: 30.0,
                              width: 30.0,
                            ))
                      ],
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            new Container(
                margin: EdgeInsets.only(top: 20.0),
                height: 530.0,
                color: Colors.white,
                child: new ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 15.0, right: 15.0),
                          child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "New Releases",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                new GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "show all",
                                      style: new TextStyle(color: Colors.blue),
                                    ))
                              ])),
                      new GridView.count(
                        crossAxisCount: 2,
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        childAspectRatio: .70,
                        padding:
                        EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                        crossAxisSpacing: 25.0,
                        mainAxisSpacing: 20.0,
                        children: newReleases
                            .map((song) =>
                        new Container(
                            child: new Stack(children: <Widget>[
                              new Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    child: new Image.network(
                                      "https://ssle.ulximg.com/image/750x750/cover/1542820274_88f97dd2474104af1f97ac7ea22acb42.jpg/70c6bd2c786419ed2fd806f44956cd9d/1542820274_260d1f119ae888bc6aa9bd12275aca05.jpg",
                                      height: 150.0,
                                      width: 150.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  new SizedBox(
                                    height: 5.0,
                                  ),
                                  new Text(
                                    "Music",
                                    style:
                                    new TextStyle(color: Colors.grey),
                                  ),
                                  new SizedBox(
                                    height: 5.0,
                                  ),
                                  new Text(
                                    song,
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new SizedBox(
                                    height: 2.5,
                                  ),
                                  new Text(
                                    "English | 1:24",
                                    style:
                                    new TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              new Positioned(
                                  right: 10.0,
                                  bottom: 50.0,
                                  child: new Image.network(
                                    'https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png',
                                    height: 40.0,
                                    width: 40.0,
                                  ))
                            ])))
                            .toList(),
                      ),
                    ])),
          ],
        ));
  }
}
