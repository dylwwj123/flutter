import 'package:flutter/material.dart';

class CountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("计数器"),
          backgroundColor: Colors.red,
        ),
        body: NumCount(),
      ),
    );
  }
}

class NumCount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NumCountState();
  }
}

class NumCountState extends State<NumCount> {
  
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("按钮+1"),
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
              ),
              SizedBox(width: 10,),
              RaisedButton(
                child: Text("按钮-1"),
                onPressed: (){
                  setState(() {
                    counter--;
                  });
                },
              ),
            ],
          ),
          Text("当前点击第($counter)次",style: TextStyle(fontSize: 24),)
        ],
      )
    );
  }
}