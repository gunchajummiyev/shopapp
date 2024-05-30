import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopapp/widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset(
            "images/1.jpg",
            height: 300,
          ),),
          Container(
            width: double.infinity,
            color: Colors.grey[100],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Title",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff263238),
                        ),
                      ),
                      Icon(Icons.favorite,
                      color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),),
                  Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "02",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff263238),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),),
                  Padding(padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                   "hjcsbdshkncksjcankcxs;CXMKSmcajnuvcjbdshzn zmxn jnsjcnzlknvlkdjnvjs",
                      style:TextStyle(
                      fontSize:18,
                    color:Color(0xff263238),
                  ),
                    textAlign: TextAlign.justify,
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    //bottomNavigationBar: ItemBottomBar(),
    );
  }
}
