import 'package:flutter/material.dart';

class My extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  var Songs = ["Shreya Ghoshal", "Sonu Nigam", "Sunidhi Chauhan", "A R Rahman"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey.shade100,
        body: new ListView(
          shrinkWrap: false,
          padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
          children: <Widget>[
            new Container(
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
            new Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: new Stack(
                children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Card(
                        child: new ClipRRect(
                          borderRadius: BorderRadius.circular(15.0), child:new Image.network(
                            "https://static.webshopapp.com/shops/094126/files/143596814/david-garrett-music-album-cd.jpg")),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      )),
                  new Padding(
                      padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Card(
                        child: new ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),child: new Image.network(
                            "http://s3.amazonaws.com/NRNArt/Michael-Buble--To-Be-Loved-album-cover.jpg")),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      )),
                  new Padding(
                      padding:
                      EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0),
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Stack(children: <Widget>[
                            new Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                          "http://th.soundsblog.it/8thX1mdnr17QLfOzHW7Cbs6yyn0=/fit-in/655xorig/http%3A%2F%2Fmedia.soundsblog.it%2Ff%2Ffd4%2Forigins-imagine-dragons.jpg")),
                                  new Padding(
                                      padding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                      child: Text(
                                        "Music | English",
                                        style:
                                        new TextStyle(color: Colors.grey),
                                      )),
                                  new Padding(
                                      padding:
                                      EdgeInsets.only(left: 10.0, top: 5.0),
                                      child: Text(
                                        "Imagine Dragons",
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  new Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, top: 5.0, bottom: 10.0),
                                      child: Text(
                                        "English | 2:34 hrs",
                                        style:
                                        new TextStyle(color: Colors.grey),
                                      )),
                                ]),
                            new Positioned(
                              child: Image.network(
                                "https://freeiconshop.com/wp-content/uploads/edd/play-rounded-flat.png",
                                height: 60.0,
                                width: 60.0,
                              ),
                              bottom: 50.0,
                              right: 5.0,
                            )
                          ])))
                ],
              ),
            ),
            new GridView.count(
              crossAxisCount: 2,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: .90,
              padding: EdgeInsets.all(5.0),
              crossAxisSpacing: 10.0,
              children: Songs
                  .map((song) =>
              new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: new Image.network(
                          "https://qhdtgl.com/wp-content/uploads/data/2018/1/7/Shreya-Ghoshal-Beautiful-Wallpapers-Hd-PIC-SDY007931.jpg"),
                    ),
                    new SizedBox(
                      height: 5.0,
                    ),
                    new Text(
                      "Shreya Ghoshal",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      "4 playlists",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
              ))
                  .toList(),
            ),
            new Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.amber),
              child: new Row(
                children: <Widget>[
                  new Expanded(flex: 2, child: new Icon(Icons.headset)),
                  new Expanded(
                      flex: 6, child: new Text("BROWSE SONGS FOR DOWNLOAD")),
                  new Expanded(flex: 2, child: new Icon(Icons.file_download))
                ],
              ),
            )
          ],
        ));
  }
}
