import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product",),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white54),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: <Widget>[

          Image.asset(
            "assets/images/chair01.jpg",
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            top: 250.0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              child: Container(
                margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Text(
                  "Chair",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: (){},
          ),
        ]),

      ),
    );
  }
}
