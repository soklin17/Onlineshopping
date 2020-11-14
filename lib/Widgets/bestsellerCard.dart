import 'package:flutter/material.dart';
import 'package:navigation_bar/detailscreen/detailscreen.dart';

class BestSellersCard extends StatelessWidget {
  String imgUrl;
  String title;
  String price;

  BestSellersCard({
    this.imgUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ScreenDetail()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
              child: Container(
                width: 170.0,
                height: 170.0,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imgUrl,
                      ),
                      fit: BoxFit.cover),
                ),
                child: IconButton(
                  icon: Icon(Icons.favorite_border),

                  onPressed: () {},
                ),
              ),
            ),
          ),
          Container(
            child: Text(title),
          ),
          Container(
            child: Text(" \$50.00"),
          ),
        ],
      ),
    );
  }
}
