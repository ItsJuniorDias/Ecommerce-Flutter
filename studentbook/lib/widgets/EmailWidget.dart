import 'package:flutter/material.dart';

class EmailWidget extends StatelessWidget {
  final img;

  EmailWidget(this.img);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 12, 10, 10),
          width: 100,
          height: 70,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                  offset: Offset(0, 4),
                  blurRadius: 12,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(29))),
          child: Center(
            child: Image.asset(
              "lib/assets/$img",        
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
