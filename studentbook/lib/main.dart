import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:ListTransfer(), 
        appBar: AppBar(title: Text('Home'),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      )
    );
  }
}

class ListTransfer extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Column(
          children: <Widget> [
            ItemTransferencia('100.00', '1000'),
            ItemTransferencia('200.00', '2000'),
            ItemTransferencia('300.00', '3000'),
          ],
        );
  }

}

class ItemTransferencia extends StatelessWidget {

  final String value;
  final String numberAccount;

  ItemTransferencia(this.value, this.numberAccount);  

  

  @override
  Widget build(BuildContext context) {
    return  Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(value),
              subtitle: Text(numberAccount),
            )
          );
  }
  
}