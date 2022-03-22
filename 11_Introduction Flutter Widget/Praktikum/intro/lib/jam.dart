import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Jam extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Jam(); 
}

class _Jam extends State<Jam>{
  var jam = '';
  void startJam() {
    Timer.periodic(new Duration(seconds: 1), (_) {
      var tgl = new DateTime.now();
      var formatedjam = new DateFormat.Hms().format(tgl);
      setState(() {
        jam = formatedjam;
      });
    });
  }

  @override
  void initState() {
    startJam();
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Ditya Anggraeni Task11 - Clock'),
        ),
        body: Center(
          child: Text(
            jam,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
