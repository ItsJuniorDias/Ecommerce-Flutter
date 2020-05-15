import 'package:flutter/material.dart';
import 'package:studentbook/widgets/Filters.dart';
import '../widgets/CardProduct.dart';
import '../widgets/ItemCategories.dart';


class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                  offset: Offset(0, 4),
                  blurRadius: 12,
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(8, 8, 0, 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Icon(Icons.arrow_back_ios, size:22),
                        Icon(Icons.search,),
                      ],),
                      
                      ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Text("Women's tops",
                        style: TextStyle(
                            fontSize: 34,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF222222))),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 11, 10, 10),
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ItemCategories("T-Shirts"),
                        ItemCategories("Crops tops"),
                        ItemCategories("Sleeveless"),
                        ItemCategories("Blusa"),
                        ItemCategories("Shorts"),
                        ItemCategories("Cropt"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 8, 14, 0),
                    width: 450,
                    height: 26,
                    padding: EdgeInsets.fromLTRB(5, 1,5, 0),
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Filters(Icons.filter_list, "Filters"),
                      Filters(Icons.swap_vert, "Price: lowest to hight"),
                      Filters(Icons.dashboard,""),
                    ],)
                  ),
                ],
              )),
          Container(
            child: Flexible(
                child: ListView(
              children: <Widget>[
                CardProduct("Pullover", "Mango", "RS 49,00","photo.png"),
                CardProduct("Croped", "Blusa", "RS 32,00","photo2.png"),
                CardProduct("Short", "Vestimenta", "RS 15,00","img1.png"),
                CardProduct("Blusa", "Inverno", "RS 75,00","img2.png"),
                CardProduct("Bermuda", "Marculino", "RS 25,00","img2.png"),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
