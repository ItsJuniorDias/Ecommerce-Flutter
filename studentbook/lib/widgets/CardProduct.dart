import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String name;
  final String subname;
  final String value;
  final img;

  CardProduct(this.name, this.subname, this.value, this.img);

  @override
  build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
        width: 80,
        height: 125,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                offset: Offset(0, 10),
                blurRadius: 12,
              )
            ]),
        child: Row(
          children: <Widget>[
            Image.asset(
               "lib/assets/$img",
              width: 105,
              height: 123,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 320,
                  height: 105,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        subname,
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
                        value,
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
        ));
  }
}
