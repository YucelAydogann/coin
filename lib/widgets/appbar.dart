import 'package:flutter/material.dart';

AppBar jeaAppBar(){
  return AppBar(
    backgroundColor: Colors.deepPurple,
    elevation: 8,
    leading: Icon(Icons.menu),
    title: Text('Jeanance'),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 12),
        child: Row(
          children: [
            Icon(Icons.refresh),
            SizedBox(width: 8),
            Icon(Icons.settings),
          ],
        ),
      )

    ],
  );
}
