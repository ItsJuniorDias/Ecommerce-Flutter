import 'package:flutter/material.dart';
import 'package:studentbook/widgets/FormComponent.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Container(
                      margin: EdgeInsets.fromLTRB(8, 14, 0, 25),
                      child: Row(
                       
                        children: <Widget>[
                        Icon(Icons.arrow_back_ios, size:24),
                      ],),
                      
                      ),
                  Container(
                    margin: EdgeInsets.fromLTRB(14, 30, 0, 0),
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 34,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF222222))),
                  ),
                  Container(
                    width: 600,
                    height: 50,
                    margin:  EdgeInsets.fromLTRB(14, 70, 14, 0),  
                    child: Column(
                      children: <Widget>[
                      FormComponent(),
                    ],),
                  ),
                 
           ],
        ),  
        ),
    );
  }
}