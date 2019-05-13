import 'package:flutter/material.dart';
import 'package:cashmoney/Theme.dart' as Theme;
//import 'package:cashmoney/ui/settings/Settings.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 56.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Text(
              title,
              style: Theme.TextStyles.appBarTitle,
              textAlign: TextAlign.center,
            ),
          ),
/*          new IconButton(
              icon: Icon(Icons.settings),
              color: Color(0xFFFFFFFF),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Settings(),
                  )),
//            alignment: const AlignmentDirectional(15.0, 0.0),
            ),*/
        ],
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              Theme.Colors.appBarGradientStart,
              Theme.Colors.appBarGradientEnd
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
