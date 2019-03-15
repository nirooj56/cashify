import 'package:flutter/material.dart';
import 'package:cashmoney/ui/home/GradientAppBar.dart';
import 'package:cashmoney/ui/home/PlanetList.dart';

String value = "";
TextEditingController textController = TextEditingController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new HomePageBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                // return object of type Dialog
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(16.0))),
                  title: new TextField(
                    controller: textController,
                    maxLength: 15,
                    textInputAction: TextInputAction.done,
                    onChanged: (text) {
                      value = text;
                    }, //onChanged is called whenever we add or delete something on Text Field
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      fillColor: Colors.black,
//                      prefixIcon: Icon(Icons.business_center),
                      prefix: CircularProgressIndicator(),
                      labelText: 'Company Name',
                    ),
                  ),
                  actions: <Widget>[
                    // usually buttons at the bottom of the dialog
                    new RaisedButton(
                      child: new Text("Close"),
                      textColor: Colors.white,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    new RaisedButton(
                      child: new Text("Save"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              },
            );
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
