import 'package:flutter/material.dart';

class GradientAppBar extends StatefulWidget {
  GradientAppBar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GradientAppBarState createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<GradientAppBar> {
  final double barHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(""),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text(
                widget.title,
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            color: Colors.white,
            onPressed: () {}, // null disables the button
          )
        ],
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [Color(0xFF414345), Color(0xFF232526)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}

/*

child: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
Padding(
padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 64.0),
child: Text(
widget.title,
style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
),
),


],
)*/
