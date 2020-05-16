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
                    margin: EdgeInsets.fromLTRB(14, 5, 0, 0),
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 34,
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF222222))),
                  ),
                  Container(
                    
                    width: 600,
                    height: 200,
                    margin:  EdgeInsets.fromLTRB(14, 70, 14, 0),  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                      FormComponent(),
                      Container(
                        margin:  EdgeInsets.fromLTRB(14, 30, 14, 0),  
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                            
                            Text("Forget your password?", 
                             style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Metropolis-Normal",
                              fontWeight: FontWeight.w600
                            )
                           ),
                           Container(
                             margin: EdgeInsets.fromLTRB(10, 0,0 , 0),
                             child:Icon(Icons.subdirectory_arrow_right, 
                             size:22,  
                             color: 
                             Colors.red[500]
                            ), 
                           ),
                            
                        ],),  
                        
                      ),
                    ],),
                    
                  ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         ButtonBar(
                          children: <Widget>[
                          FlatButton(
                          child: Text('LOGIN'),
                          color: Colors.red[500],
                          onPressed: () {/** */},
                        ),
                      ],
                    )
                      ],)
                    ),

                   
                                      
           ],
        ),  
        ),
    );
  }
}