import 'package:flutter/material.dart';
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
                Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  width: 80,
                  height: 125,
                    decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                       boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.12),
                          offset: Offset(0,10),
                          blurRadius: 12,
                          )
                        ]
                    ),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 67,
                          height: 67,
                          margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          decoration: BoxDecoration(
                             boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.19),
                                  offset: Offset(0,10),
                                  blurRadius: 12,
                        ),
                                    ]
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://avatars1.githubusercontent.com/u/50254416?s=460&v=4"),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 320,
                            height: 105,
                            margin: EdgeInsets.fromLTRB(10, 10,10, 10),
                            padding: EdgeInsets.fromLTRB(10, 10,10, 10),
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Container(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Pullover',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Mango',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      ),
                                       Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      ),
                                       Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      ),
                                       Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      ),
                                       Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      ),
                                   ],
                                  ),
                                ),
                                Text(
                                    'RS 51,00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                               ],
                            ),                              
                          ),
                        ],
                      )
                    ],
                  )
                ),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
