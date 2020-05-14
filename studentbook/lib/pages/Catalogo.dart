import 'package:flutter/material.dart';
import '../widgets/CardProduct.dart';
import '../widgets/ItemCategories.dart';

class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, 
                boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
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
                      child: Icon(Icons.arrow_back_ios)),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 0, 0, 25),
                    child: Text("Women's tops",
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF222222))),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 11, 10, 10),
                    height: 32,
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
                  )
                ],
              )),
          Container(
            child: Flexible(
                child: ListView(
              children: <Widget>[
                 CardProduct("Pullover", "Mango","RS 49,00"),
                 CardProduct("Croped", "Blusa","RS 32,00"),
                 CardProduct("Short", "Vestimenta", "RS 15,00"),
                 CardProduct("Blusa", "Inverno","RS 75,00"),
                 CardProduct("Bermuda", "Marculino","RS 25,00"),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
