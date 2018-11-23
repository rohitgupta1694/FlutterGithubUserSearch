import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final double barHeight = 50.0;

  GradientAppBar(
      {Key key,
      this.title,
      this.needBackButton,
      this.needSearchAction,
      this.onClick})
      : super(key: key);

  final String title;
  final bool needBackButton, needSearchAction;
  final ValueChanged<bool> onClick;

  void _onSearchIconClick() {
    onClick(true);
  }

  getTextWidget(String title) => Text(title,
      style: TextStyle(
          fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w600));

  getBackButton(BuildContext context) => IconButton(
        icon: Icon(defaultTargetPlatform != TargetPlatform.iOS
            ? Icons.arrow_back
            : Icons.arrow_back_ios),
        tooltip: 'Back',
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      );

  getLeadingAppBarWidget(BuildContext context) =>
      needBackButton ? getBackButton(context) : Container(child: Text(""));

  Widget getCustomAppBarTextWidget() {
    if (!needBackButton && needSearchAction) {
      return Padding(
        padding: const EdgeInsets.only(left: 48.0),
        child: getTextWidget(title),
      );
    } else if (needBackButton && !needSearchAction) {
      return Padding(
        padding: const EdgeInsets.only(right: 48.0),
        child: getTextWidget(title),
      );
    } else {
      return getTextWidget(title);
    }
  }

  getCustomAppBarTrailingWidget() => needSearchAction
      ? IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search',
          color: Colors.white,
          onPressed: _onSearchIconClick, // null disables the button
        )
      : Container(child: Text(""));

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          getLeadingAppBarWidget(context),
          getCustomAppBarTextWidget(),
          getCustomAppBarTrailingWidget(),
        ],
      ),
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            spreadRadius: 5.0,
            color: Colors.grey,
            offset: new Offset(0.0, 1.0),
            blurRadius: 8.0,
          )
        ],
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
