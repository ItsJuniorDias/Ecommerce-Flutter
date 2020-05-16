import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        TextFormField(
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
      ],),
    );
  }
}