import 'package:flutter/material.dart';
import 'package:studentbook/pages/Catalogo.dart';
import 'package:studentbook/pages/SignIn.dart';
import 'package:studentbook/widgets/EmailWidget.dart';

class SignUp extends StatelessWidget {
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
                    Icon(Icons.arrow_back_ios, size: 24),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14, 5, 0, 0),
                child: Text("Sign Up",
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222))),
              ),
              Container(
                width: 600,
                height: 200,
                margin: EdgeInsets.fromLTRB(14, 65, 14, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Name',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Email',
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Password',
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return SignUp();
                                  }));
                                },
                                child: Text("Forget your password?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Metropolis-Normal",
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Icon(Icons.subdirectory_arrow_right,
                                    size: 16, color: Colors.red[500]),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
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
                        minWidth: 445,
                        child: RaisedButton(
                          onPressed: () => {
                            Navigator.pushNamed(context, '/lib/pages/Catalogo')
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "SIGN UP",
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
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 122, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Or login with social account",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Metropolis-Normal",
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    EmailWidget("gmail.png"),
                    EmailWidget("facebook.png"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
