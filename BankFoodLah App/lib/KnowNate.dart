import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KnowNate extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("KnowNate"),
      ),
    body: Container(
      decoration: new BoxDecoration(color: Colors.lightGreen[200]),
     child: Column(
       children: <Widget>[
         Image(image: AssetImage("assets/images/Banner.png"),),
         Image(image: AssetImage("assets/images/Info.png"),),
       ],
     )

    )

    );
  }
}