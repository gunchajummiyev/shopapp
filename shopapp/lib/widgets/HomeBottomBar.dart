import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(vertical:5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.home,
        color: Color(0xff263238),
        size: 32,
        ),
          Icon(Icons.favorite,
            color: Color(0xff263238),
            size: 32,
          ),
          Icon(CupertinoIcons.cart_fill,
            color: Color(0xff263238),
            size: 32,
          ),
          Icon(Icons.person,
            color: Color(0xff263238),
            size: 32,
          ),
      ],),
    );
  }
}
