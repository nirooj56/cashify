import 'package:flutter/material.dart';
import 'package:cashmoney/Theme.dart' as Theme;
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:cashmoney/model/Planet.dart';

class PlanetDetailBody extends StatelessWidget {
  final Planet planet;
  PlanetDetailBody(this.planet);

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'DEBIT'),
    new Tab(text: 'CREDIT'),
  ];

  final TabController _tabController =
      TabController(vsync: ScaffoldState(), length: 2);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
//        new GradientAppBar(planet.name),
        _getHeader(),
        _getTabs(),
//        _getGradient()
      ],
    );
  }

  Container _getHeader() {
    return new Container(
      margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 65.0),
      constraints: new BoxConstraints.expand(height: 180.0),
      decoration: new BoxDecoration(
        color: Color(0xFF8685E5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0, // has the effect of softening the shadow
            spreadRadius: -10.0, // has the effect of extending the shadow
            offset: Offset(
              0.0,
              5.0,
            ),
          )
        ],
        borderRadius: new BorderRadius.circular(8.0),
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 30.0, left: 60.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(planet.name, style: Theme.TextStyles.planetTitle),
            new Container(
                color: const Color(0xFFFFFFFF),
                width: 174.0,
                height: 2.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 20.0,
                )),
            new Row(
              children: <Widget>[
                new Text("Balance is Rs. ", style: Theme.TextStyles.totalBalance),
                new Text(planet.balance, style: Theme.TextStyles.totalBalance)
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _getTabs() {
    return new Container(
      margin: new EdgeInsets.only(top: 15.0, left: 0.0, right: 0.0),
      padding: new EdgeInsets.only(left: 10.0, right: 10.0),
      height: 380,
      decoration: new BoxDecoration(
        color: Colors.transparent,
      ),
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: new TabBar(
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: new BubbleTabIndicator(
              indicatorHeight: 35.0,
              indicatorColor: Color(0xFF00C6FF),
              indicatorRadius: 8.0,
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
            ),
            tabs: myTabs,
            controller: _tabController,
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            _getDebit(),
            _getCredit(),
          ],
        ),
      ),
    );
  }

  Container _getDebit() {
    return new Container(
     child: new Table(
      border: TableBorder.all(width: 1.0, color: Colors.black),
       children: [
        TableRow(children: [
          TableCell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text('Date', style: Theme.TextStyles.tableHeader),
                new Text('Description', style: Theme.TextStyles.tableHeader),
                new Text('Balance', style: Theme.TextStyles.tableHeader),

//                new Text(data['id'].toString()),
              ],
            ),
          )
        ]),
        TableRow(children: [
          TableCell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text(planet.id),
                new Text(planet.name),
                new Text(planet.balance)
              ],
            ),
          )
        ]),

       ],
    ));
  }

  Container _getCredit() {
    return new Container(
        child: new Table(
          border: TableBorder.all(width: 1.0, color: Colors.black),
          children: [
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('Date', style: Theme.TextStyles.tableHeader),
                    new Text('Description', style: Theme.TextStyles.tableHeader),
                    new Text('Balance', style: Theme.TextStyles.tableHeader),

//                new Text(data['id'].toString()),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(planet.id),
                    new Text(planet.name),
                    new Text(planet.balance)
                  ],
                ),
              )
            ]),

          ],
        ));
  }
}
