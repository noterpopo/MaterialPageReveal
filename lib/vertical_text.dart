import 'package:flutter/material.dart';
class VerticalText extends StatelessWidget{
  final String text;

  VerticalText({this.text});

  @override
  Widget build(BuildContext context) {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: init(text)
    );
  }

  List<Widget> init(String text){
    List<Widget> list=new List<Widget>();
    for(int i=0;i<text.length;++i){
      list.add(new Text(text[i],style: new TextStyle(fontFamily: 'hdx',fontSize: 70.0,color: Colors.white)));
    }
    return list;
  }
}