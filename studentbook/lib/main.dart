import 'package:flutter/material.dart';
import 'package:studentbook/pages/Catalogo.dart';
import 'package:studentbook/pages/Login.dart';
import 'package:studentbook/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'E-commerce',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFFE5E5E5)
      ),
      //home: SignIn(),
      initialRoute: '/lib/pages/Login',
      routes: {
        "/lib/pages/home": (context) => HomePage(),
         "/lib/pages/Login": (context) => LoginSignupPage(),
        "/lib/pages/Catalogo": (context) => Catalogo(),
        
      }
    );
  }
} 