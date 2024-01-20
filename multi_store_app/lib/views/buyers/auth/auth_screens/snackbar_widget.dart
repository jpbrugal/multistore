import 'package:flutter/material.dart';


showSnackBar(BuildContext context, String title){
  final snackBar = SnackBar(
    backgroundColor: Colors.yellow.shade900,
    content: Text(title),
  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
   ScaffoldMessenger.of(context).showSnackBar(snackBar);
}