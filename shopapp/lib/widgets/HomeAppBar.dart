import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
    color: Colors.grey[100],
    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
   /* borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(25),
    bottomRight: Radius.circular(25),
    ),
    ),*/

      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
              color: Color(0xff263238),
          ),
          Padding(padding: EdgeInsets.only(left: 100, right: 50),
          child: Text ("oilean",
            style: TextStyle(fontSize: 30,
              color:Color(0xff263238),

            ),
            ),
          ),
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
