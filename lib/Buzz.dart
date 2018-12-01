import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Buzz extends StatefulWidget {
  @override
  _BuzzState createState() => _BuzzState();
}

class _BuzzState extends State<Buzz> {
  var buzz = [
    "Aquaman release date",
    "Odiyan record breaker",
    "Zero: SRK stunning"
  ];
  var buzz2 = [
    "Aquaman release date",
    "Odiyan record breaker",
    "Zero: SRK stunning"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 3; i++) {
      buzz.addAll(buzz2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: new Container(
            padding: EdgeInsets.only(top: 20.0, left: 20.0),
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Text(
              "Buzz",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            new Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                  icon: new Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            )
          ],
        ),
        body: new Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          color: Colors.white70,
          child: new Column(
            children: <Widget>[
              new Text("Discover whats trending in the world of entertainment"),
              new SizedBox(
                height: 10.0,
              ),
              new Expanded(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: buzz.length,
                    shrinkWrap: false,
                    itemBuilder: (context, i) =>
                    (i.isEven)
                        ? new Stack(children: <Widget>[
                      new Image.network(
                        "https://www.maxim.com/.image/ar_8:10%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTU3MTc0NjI4MDM5NTMzNjg2/aquaman-poster-dc-warner-promo.jpg",
                        fit: BoxFit.fill,
                        width: 200.0,
                      ),
                      new Positioned(
                        child: new Container(
                          alignment: Alignment.center,
                          width: 200.0,
                          color: Colors.black.withOpacity(.6),
                          height: 50.0,
                          padding: EdgeInsets.only(right: 50.0),
                          child: new Text(
                            buzz[i],
                            style: new TextStyle(color: Colors.white),
                          ),
                        ),
                        bottom: 32.0,
                      )
                    ])
                        : new Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: new Stack(children: <Widget>[
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwHQuhTtjrUeQnGz60HhItNaRpCwxv5apFy9Hmtio2sAHNtbJQ",
                            fit: BoxFit.fill,
                            width: 200.0,
                          ),
                          new Positioned(
                            child: new Container(
                              alignment: Alignment.center,
                              width: 200.0,
                              color: Colors.black.withOpacity(.6),
                              height: 50.0,
                              padding: EdgeInsets.only(right: 50.0),
                              child: new Text(
                                buzz[i],
                                style: new TextStyle(color: Colors.white),
                              ),
                            ),
                            bottom: 0.0,
                          )
                        ])),
                    staggeredTileBuilder: (i) => new StaggeredTile.count(2, 3),
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 8.0,
                  ))
            ],
          ),
        ));
  }
}
