import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("BMI",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 29.0
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: new Container(
        padding: const EdgeInsets.all(3.0),
        alignment: Alignment.topCenter,
        child: new ListView(
          children: [
            new Image.asset ("image/bmilogo.png",
            height: 140.0,
              width: 200.0,
            ),

            new Container(
              //form
              height: 250.0,
              width: 390.0,
              color: Colors.grey.shade300,
              child: new Column(
                children: [
                  new TextField(
                    keyboardType: TextInputType.number,
                     decoration: new InputDecoration(
                       hintText: "Age",
                       icon: new Icon(Icons.person_outline)
                     ),
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                     decoration: new InputDecoration(
                       hintText: "Height in feet",
                       icon: new Icon(Icons.bar_chart_outlined)
                     ),
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                     decoration: new InputDecoration(
                       hintText: "Weight in lbs",
                       icon: new Icon(Icons.line_weight_outlined)
                     ),
                  ),
                  new Padding(padding: EdgeInsets.all(4.0)),
                  new Center(
                    child: new RaisedButton(
                        onPressed: null,
                      color: Colors.pinkAccent,
                      child: new Text( "Calculate",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.w700
                        ),
                      )

                    ),
                  )
                ],
              ),
            ),

            new Padding(padding: EdgeInsets.all(15.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text("Hello! Are You Obese or Not?",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0,
                    color: Colors.pinkAccent
                  ),
                )

              ],

            )


          ],
        ),
      ),

    );
  }
}
