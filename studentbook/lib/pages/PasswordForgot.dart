import 'package:flutter/material.dart';

class PasswordForgot extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(8, 14, 0, 25),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/lib/pages/SignIn');
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14, 5, 0, 0),
                child: Text("Fogot password",
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222))),
              ),
              Container(
                width: 600,
                height: 100,                
                margin: EdgeInsets.fromLTRB(14, 73, 14, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Please, enter your email address. You will receive a link to create a new password via email.",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Metropolis-Normal",
                      ),
                    ),

                      Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                        ],
                      ),
                    ),        
                  ],
                  
                ),
              ),
             
                  Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.13),
                            offset: Offset(0, 4),
                            blurRadius: 13,
                          )
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              height: 50.0,
                              minWidth: 305,
                              child: RaisedButton(
                                onPressed: () => {
                                  Navigator.pushNamed(
                                      context, '/lib/pages/Catalogo')
                                },
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                child: Text(
                                  "SEND",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Metropolis-Normal",
                                      fontWeight: FontWeight.w600),
                                ),
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ))
            ])));
  }
}
