import 'package:flutter/material.dart';
import 'package:material_page_reveal/pager_indicator.dart';
import 'package:material_page_reveal/pages.dart';
import 'package:material_page_reveal/page_reveal.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Page(
            viewModel: pages[0],
            precentVisible: 1.0,
          ),
          new PageReveal(
            revealPercent: 1.0,
            child: new Page(
              viewModel: pages[1],
              precentVisible: 1.0,
            ),
          ),
          new PagerIndicator(
            viewModel: new PagerIndicatorViewModel(
              pages,
              0,
              SlideDirection.none,
              0.0
            ),
          ),
        ],
      )
    );
  }
}
