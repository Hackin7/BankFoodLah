import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LetsBankFood extends StatefulWidget {
  @override
  LetsBankFoodState createState() => LetsBankFoodState();
}

class LetsBankFoodState extends State<LetsBankFood>{
  bool _isVisible = false;
  @override

  void _show(string){
    setState(() {
      if (string == "punggol"){
        _isVisible = true;
      }else{
        _isVisible = false;
      }
    });

  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Let'sBankFood"),
        ),

    body: Container(
        decoration: new BoxDecoration(color: Colors.lightGreen[200]),
    child:Padding(
        padding: EdgeInsets.all(16.0),
        child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Search: "),
              TextField(
                onChanged: (string){_show(string);},
              ),
              Text(""),
              Visibility (
                visible: _isVisible,
                  child: Column(
                    children: <Widget>[
                    Container( width: 350, height: 50, child:Card( color: Colors.red[100],
                      child: Center(child:Text("Block 194 Punggol Road Multi-Story Car park"),),)),
                      Text(""),
                      Image(image: AssetImage("assets/images/Punggol.png"),),
                      Text(""),
                      Container( width: 1000, height: 100, child:Card( color: Colors.red[100],
                      child: Center(child:Text("Sunday 1 June 2020 from 1pm to 3pm, \nLet'sBankFood will be collecting your excess food")))),
                    ],
                  )
              )
              //Image(image: null,)
            ],
        ),
      ),
    )
    );
  }
}