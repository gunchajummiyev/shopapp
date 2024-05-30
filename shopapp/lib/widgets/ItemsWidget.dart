import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.72,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<7; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("images/$i.jpg",
                  height: 220,
                  width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 8),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff263238),
                  ),
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.cart_badge_plus,
                 color: Color(0xff263238),
                    size: 20,
                  ),

                ],
              ),)
            ],),
          ),
      ],
    );
  }
}
