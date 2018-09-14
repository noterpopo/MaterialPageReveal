import 'package:flutter/material.dart';
import 'package:material_page_reveal/vertical_text.dart';

final pages=[
  new PageViewModel(const Color(0xFF2775B6), '景泰藍','JingTaiLan','#2775B6','assets/key.png'),
  new PageViewModel(const Color(0xFFEBA0B3), '芍藥耕紅', 'ShaoYaoGengHong','#EBA0B3','assets/wallet.png'),
  new PageViewModel(const Color(0xFF862617), '赭石', 'ZheShi','#862617','assets/shopping_cart.png'),
];
class Page extends StatelessWidget{

  final PageViewModel viewModel;
  final double precentVisible;

  Page({
    this.viewModel,
    this.precentVisible=1.0,
  });
  @override
  Widget build(BuildContext context) {
    var textLen=viewModel.colorName.length;
    return new Container(
      width: double.infinity,
      color: viewModel.color,
      child: Opacity(
        opacity: precentVisible,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(child: new Container()),
            new Transform(
              transform: new Matrix4.translationValues(0.0, 50.0*(1.0-precentVisible), 0.0),
              child: new Padding(
                child: new VerticalText(
                  text: viewModel.colorName,
                ),
                padding: new EdgeInsets.only(bottom: 20.0*(5-textLen)),),
            ),
            new Transform(
              transform: new Matrix4.translationValues(0.0, 30.0*(1.0-precentVisible), 0.0),
              child: new Padding(
                padding: new EdgeInsets.only(bottom: 10.0),
                child: new Text(viewModel.pingyin,style: new TextStyle(
                    color: Colors.white,
                    fontSize: 22.0
                ),),
              ),
            ),
            new Transform(
              transform: new Matrix4.translationValues(0.0, 50.0*(1.0-precentVisible), 0.0),
              child: new Padding(
                padding: new EdgeInsets.only(top:25.0,bottom: MediaQuery.of(context).size.height*0.24),
                child: new Text(viewModel.RGBCode,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 34.0
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageViewModel{
  final Color color;
  final String colorName;
  final String pingyin;
  final String RGBCode;
  final String iconAssetIcon;

  PageViewModel(this.color, this.colorName, this.pingyin, this.RGBCode,
      this.iconAssetIcon);


}