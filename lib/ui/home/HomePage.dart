import 'package:flutter/material.dart';
import 'package:cashmoney/ui/home/GradientAppBar.dart';
import 'package:cashmoney/ui/home/PlanetList.dart';

String value = "";
TextEditingController textController = TextEditingController();
Color myColor = Color(0xFF00C6FF);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new HomePageBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showDialog(context);
          },
          backgroundColor: Color(0xFFFFFFFF),
          foregroundColor: Color(0xFF8685E5),
          child: Icon(Icons.add),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new GradientAppBar("Cash Money"),
        new PlanetList(),
      ],
    );
  }
}

void _showDialog(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 10.0),
          content: Container(
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Add a new Company",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Divider(
                  color: Colors.grey,
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Company Name",
                      border: InputBorder.none,
                    ),
                    maxLength: 15,
                    maxLines: 4,
                  ),
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.only(top: 05.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            padding: EdgeInsets.only(right: 50.0, left: 50.0),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: new Text("Cancel"),
                            textColor: Colors.white,
                          ),
                          FlatButton(
                            padding: EdgeInsets.only(right: 50.0, left: 50.0),
                            onPressed: () {},
                            child: new Text("Save"),
                            textColor: Colors.white,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ));
    },
  );
}
