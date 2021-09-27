import 'package:coin/coins.dart';
import 'package:flutter/material.dart';
import 'widgets/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeanance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: jeaAppBar(),
        body: CoinsPrice(),
      ),
    );
  }
}