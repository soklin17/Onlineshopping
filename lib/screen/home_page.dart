import 'package:flutter/material.dart';
import 'package:navigation_bar/Widgets/bestsellerCard.dart';
import 'package:navigation_bar/Widgets/categoriesCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HOME"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            //image
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/images/cover.jpg",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: CategoriesCard(
                        imgUrl: 'assets/images/sofa.png',
                        title: "Sofa",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: CategoriesCard(
                        imgUrl: "assets/images/chair01.jpg",
                        title: "Chair",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: CategoriesCard(
                        imgUrl: 'assets/images/outdoor.jpg',
                        title: "Outdoor",
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: CategoriesCard(
                          imgUrl: 'assets/images/table.jpg',
                          title: "Table",
                        )
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0),
                child: Text(
                  "Best Sellers",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: BestSellersCard(
                        imgUrl: 'assets/images/designchair.jpg',
                        title: "Chair Design white",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: BestSellersCard(
                        imgUrl: 'assets/images/Lighting Magnolia.jpg',
                        title: "Lighting Magnolia",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: BestSellersCard(
                        imgUrl: 'assets/images/sofa.png',
                        title: "Chair Design white",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
