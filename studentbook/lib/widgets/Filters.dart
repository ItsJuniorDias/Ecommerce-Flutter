import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
    final IconData icon;
    final String label;

    Filters(this.icon, this.label);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(icon),
        Container(
          padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
          child: Text(label,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xFF222222),
          )),
        ),
      ],
    );
  }
}
