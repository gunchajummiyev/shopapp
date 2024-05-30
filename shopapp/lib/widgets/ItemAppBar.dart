import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
    child: Row(
    children: [
      InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
            Icons.arrow_back,
        size: 30,
        color: Color(0xff263238),
        ),
      ),
      Padding(padding: EdgeInsets.only(left: 20),
      child: Text(
        "Product",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Color(0xff263238),
        ),
      ),),
      Spacer(),
      Icon(CupertinoIcons.cart_fill,
      size: 30,
      color: Color(0xff263238),
          ),
    ],
    ),
    );
  }
}
