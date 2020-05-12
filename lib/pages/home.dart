import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:SafeArea(
          child: Container(
            height: 700,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/shopping.jpg"),

                  fit: BoxFit.fill,
              )
            ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 150.0, 0, 0),
              child: Column(
              children: <Widget>[
                FlatButton.icon(
                  color: Colors.indigo[700],
              onPressed: () {
                Navigator.pushNamed(context,'/Item');

              },
              icon: Icon(Icons.create, color: Colors.white,),
              label: Text(
              'Create Shopping List',
              style: TextStyle(
                color:Colors.white,
    ),
              )),

    ],
    ),


          )
      ),
    ),
    );
  }
}
