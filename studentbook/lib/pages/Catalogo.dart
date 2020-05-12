import 'package:flutter/material.dart';
import '../widgets/ItemCategories.dart';

class Catalogo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(                     
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,   
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO( 0, 0, 0, 0.12),
                      offset: Offset(0, 4),
                      blurRadius: 12,
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 8, 0, 30),
                      child: Icon(Icons.arrow_back_ios)
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 35),
                      child: Text("Women's tops", 
                        style: TextStyle(
                          fontSize:34, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222)
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 10, 10, 10),
                      height: 32,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:[ 
                          ItemCategories("T-Shirts"),
                          ItemCategories("Crops tops"),
                          ItemCategories("Sleeveless"),
                          ItemCategories("Blusa"),
                          ItemCategories("Shorts"),
                          ItemCategories("Cropt"),
                        ],
                      ),
                    )
                  ],
                )
              ),
              Container(
                height: 500
              )
            ]
          ),
        ),
      );
  }
}