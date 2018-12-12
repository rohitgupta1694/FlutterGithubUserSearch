import 'package:flutter/material.dart';
import 'package:github_user_search_flutter/ui/home_page.dart';
import 'package:github_user_search_flutter/utils/search_bloc_provider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SearchBLoCProvider(
      child: MaterialApp(
        title: 'Github User Search',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xffee3c48),
          accentColor: const Color(0xffee3c55),
          splashColor: Colors.white24,
          splashFactory: InkRipple.splashFactory,
        ),
        home: MyHomePage(scaffoldKey: GlobalKey<ScaffoldState>()),
      ),
    );
  }
}
