import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('I Am Rich'),
        backgroundColor: Colors.blueGrey[400],
      ),
      backgroundColor: Colors.blueGrey,
      body: const Center(
        child: Image(image: AssetImage('assets/images/diamond.png')),
      ),
    ),
    debugShowCheckedModeBanner: true,
  ));
}
