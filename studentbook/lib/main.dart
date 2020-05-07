import 'dart:isolate';

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
            ItemTransferencia(Transfer(100.00, 1000)),
            ItemTransferencia(Transfer(200.00, 2000)),
            ItemTransferencia(Transfer(300.00, 3000)),
          ],
        );
  }

}

class ItemTransferencia extends StatelessWidget {

  final Transfer _transfer;

  ItemTransferencia(this._transfer);  

  

  @override
  Widget build(BuildContext context) {
    return  Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(_transfer.valor.toString()),
              subtitle: Text(_transfer.numberAccount.toString()),
            )
          );
    }
}

class Transfer {
  final double valor;
  final int numberAccount;

  Transfer(this.valor, this.numberAccount);   

}