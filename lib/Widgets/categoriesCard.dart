import 'package:flutter/material.dart';
import 'package:navigation_bar/detailscreen/detailscreen.dart';
class CategoriesCard extends StatelessWidget {

  String imgUrl;
  String title;
  double price;
  CategoriesCard({this.imgUrl,this.title,this.price});
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ScreenDetail()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
              child: Image.asset(imgUrl,width: 90.0,height: 90.0,)
              ,),
          ),
          Container(child: Text(title),),
        ],
      ),
    );
  }
}
