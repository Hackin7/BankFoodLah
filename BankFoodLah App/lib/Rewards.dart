import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

//https://stackoverflow.com/questions/57978701/flutter-package-barcode-scan-failed-to-notify-project-evaluation-listener

class Rewards extends StatefulWidget {
  @override
  RewardsState createState() => RewardsState();
}
class RewardsState extends State<Rewards>{
  String barcode = "";
  double val = 1.6;

  @override

  void _showDialog(context){
    setState(() {val = 1.9;});
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("You have just donated 300g of food"),
          content: Text("You have donated a grand total of 1.9 kg. \nDonate 100g more to earn a complimentary tupperware"),
          actions: <Widget>[
          FlatButton(child: Text("Ok"),
          onPressed: (){
            Navigator.of(context).pop();
          },)],
      );
      }
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Rewards"),

      ),

    body: Container(
      decoration: new BoxDecoration(color: Colors.lightGreen[200]),
    child:Center(child:

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("You have donated a total of "+val.toString()+" kg of food!\n\n"),
          Image(image: AssetImage("assets/images/Rewards.png"),)],
        )

      )
    ),
      
      floatingActionButton: FloatingActionButton.extended(
        label: Text("QR Code"),
        onPressed: (){
          val = 1.9;
          scanQR(context);
          //_showDialog(context);
          },
      ),
    );
  }


  Future<void> scanQR(context) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      print(barcodeScanRes);
      _showDialog(context);
    } on Exception {
      barcodeScanRes = 'Failed to get platform version.';
    }
    setState(() {
      this.barcode = barcodeScanRes;
    });
  }

}