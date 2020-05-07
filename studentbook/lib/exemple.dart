import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFFE5E5E5)
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(                     
                height: 234,
                decoration: BoxDecoration(
                  color: Colors.white,   
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 4),
                      blurRadius: 12,
                      spreadRadius: 0.2
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
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
                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      width: double.infinity,
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF222222),
                          borderRadius: BorderRadius.all(Radius.circular(29))
                        ),
                        child: Center(
                          child: Text("T-shirts", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            )
                          ),
                        )
                      )
                    )
                  ]
                )
              ),
              Container(
                height: 500
              )
            ]
          ),
        ),
      )
    );
  }
}