import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ["Food Tester"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Test App"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () { 
                      //print("Test debug! Test Caglar commit");
                      setState(() {
                       _products.add("Advanced Food Test"); 
                      });
                  },
                  child: Text("Add product"),
                ),
              ),
              Column(
                children: _products
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/food.jpg"),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
