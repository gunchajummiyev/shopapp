import 'package:flutter/material.dart';
import 'package:shopapp/widgets/HomeAppBar.dart';
import 'package:shopapp/widgets/DealsWidget.dart';
import 'package:shopapp/widgets/ItemsWidget.dart';
import 'widgets/HomeBottomBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFD7CCC8),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here..."

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  "best deals",
                  style: TextStyle(
                    fontSize: 25,
                   fontWeight: FontWeight.bold,
                    color: Color(0xFF263238),
                  ),
                ),
              ),
              DealsWidget(),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "new in",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF263238),
                  ),
                ),
              ),
              ItemsWidget(),
            ],),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
    }
}