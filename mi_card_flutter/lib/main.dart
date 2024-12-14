import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              const Text(
                'gatesma',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript-VariableFont_wght',
                ),
              ),
              Text(
                'Flutter Developer, Singer, Actor!',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.grey[800],
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black38,
                ),
              ),
              Card(
                color: Colors.blueGrey[100],
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: const ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+86 151124906732',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'SourceSans3-Regular',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blueGrey[100],
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: const ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    'gatesma.foxmail.com',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'SourceSans3-Regular',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
