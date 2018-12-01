import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var settings = [
    "You are in mundakayam",
    "Notifications",
    "Giftcards",
    "JukeBox Credits",
    "QuickPay",
    "Purchase History",
    "Favourite venues",
    "Food and Beverages",
    "Support",
    "Offers",
    "Book a smile",
    "Settings"
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView(children: <Widget>[
      Container(
          height: 100.0,
          padding:
          EdgeInsets.only(top: 20.0, left: 20.0, right: 5.0, bottom: 20.0),
          color: Colors.pink.shade900,
          child: new Row(
            children: <Widget>[
              new Expanded(
                  flex: 1,
                  child: new Stack(children: <Widget>[
                    new ClipOval(
                        child: Image.network(
                          "https://scontent.fcok1-1.fna.fbcdn.net/v/t1.0-9/33808783_1714956508573075_3145501951576244224_n.jpg?_nc_cat=104&_nc_ht=scontent.fcok1-1.fna&oh=ea83f62fb0a0c4227da6dee030f4d638&oe=5C6B69B3",
                          fit: BoxFit.cover,
                        )),
                    new Positioned(
                      child: new ClipOval(
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/1/16/Facebook-icon-1.png",
                            height: 20.0,
                            width: 20.0,
                            fit: BoxFit.cover,
                          )),
                      bottom: 5.0,
                      left: 45.0,
                    )
                  ])),
              new Expanded(
                child: new Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text(
                          "Seby Joseph",
                          style: new TextStyle(
                              color: Colors.white, fontSize: 18.0),
                        ),
                        new Row(children: <Widget>[
                          Text(
                            "Sjkappan@gmail.com",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 12.0),
                          ),
                          new Icon(
                            Icons.verified_user,
                            color: Colors.white,
                            size: 10.0,
                          )
                        ]),
                        new Row(children: <Widget>[
                          Text(
                            "9567134224",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 12.0),
                          ),
                          new Icon(
                            Icons.verified_user,
                            color: Colors.white,
                            size: 10.0,
                          )
                        ]),
                      ],
                    )),
                flex: 3,
              ),
              new Expanded(
                child: new Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                flex: 1,
              )
            ],
          )),
      new ListView.builder(
        itemCount: settings.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        physics: ScrollPhysics(),
        itemBuilder: (context, i) =>
        new Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                (i == 0)
                    ? new Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 30.0),
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(settings[i]),
                          Text(
                            "change",
                            style: new TextStyle(color: Colors.blue),
                          )
                        ]))
                    : new Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 30.0),
                  child: new Text(settings[i]),
                ),
                (i < settings.length - 1)
                    ? new Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Colors.grey))),
                )
                    : new Container(
                  height: 30.0,
                )
              ],
            )),
      ),
      new Container(
        height: 100.0,
        color: Colors.grey.shade300,
        padding: EdgeInsets.all(20.0),
        child: Image.network(
            "https://d35fo82fjcw0y8.cloudfront.net/2018/06/01005211/Bookmyshow-logo.png"),
      )
    ]);
  }
}
