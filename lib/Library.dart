import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Column(children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
            child: new Container(
              height: 33.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade300),
              child: new TabBar(
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  controller: controller,
                  tabs: [
                    new Text("PLAYLIST"),
                    new Text("LIKES"),
                    new Text("SONGS")
                  ]),
            ),
          ),
          new Expanded(
              child: new Container(
                  child: new TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: controller,
                      children: [
                        new Column(children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(20.0),
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  new Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.blue,
                                    size: 40.0,
                                  ),
                                  new SizedBox(
                                    width: 20.0,
                                  ),
                                  new Expanded(
                                      child: new Text(
                                        "Create Playlist",
                                        style: new TextStyle(
                                            color: Colors.grey),
                                      ))
                                ],
                              )),
                          new Container(
                            decoration: new BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey.shade300))),
                          )
                        ]),
                        new Container(
                          alignment: Alignment.topCenter,
                          child: new Column(
                            children: <Widget>[
                              new Image.network(
                                "https://png2.kisspng.com/20180314/jrw/kisspng-headphones-cartoon-green-headset-phone-vector-material-5aa8c47f8daf54.3142679815210097915804.png",
                                height: 100.0,
                                width: 100.0,
                              ),
                              new SizedBox(
                                height: 30.0,
                              ),
                              new Text("Like a few Items"),
                              new SizedBox(
                                height: 10.0,
                              ),
                              new Text("to find them quicker"),
                            ],
                          ),
                        ),
                        new Container(
                          alignment: Alignment.topCenter,
                          child: new Column(
                            children: <Widget>[
                              new Image.network(
                                "https://png2.kisspng.com/20180314/jrw/kisspng-headphones-cartoon-green-headset-phone-vector-material-5aa8c47f8daf54.3142679815210097915804.png",
                                height: 100.0,
                                width: 100.0,
                              ),
                              new SizedBox(
                                height: 30.0,
                              ),
                              new Text("No music here"),
                            ],
                          ),
                        )
                      ])))
        ]));
  }
}
