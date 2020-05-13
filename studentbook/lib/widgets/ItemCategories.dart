import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  
  final String name;

  ItemCategories(this.name); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          color: Color(0xFF222222),
          borderRadius: BorderRadius.all(Radius.circular(29))),
          child: Center(
            child: Text(name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1,
            )),
      ),
    );
  }
}
