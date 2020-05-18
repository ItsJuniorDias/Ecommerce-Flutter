import 'package:flutter/material.dart';
import 'package:studentbook/pages/Catalogo.dart';
import 'package:studentbook/pages/SignIn.dart';

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
      initialRoute: '/lib/pages/SignIn',
      routes: {
        "/lib/pages/SignIn": (context) => SignIn(),
        "/lib/pages/Catalogo": (context) => Catalogo(),
        
      }
    );
  }
} 