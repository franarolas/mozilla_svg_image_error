import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Text('Contain:'),
        Container(
          width: 378,
          height: 142,
          color: Colors.blueGrey,
          child: Image.network(
            'https://cdn.amaz.cat/general/images/general/logo.svg',
            fit: BoxFit.contain,
          ),
        ),
        Text('Fill:'),
        Container(
          width: 378,
          height: 142,
          color: Colors.blueGrey,
          child: Image.network(
            'https://cdn.amaz.cat/general/images/general/logo.svg',
            fit: BoxFit.fill,
          ),
        )
      ],
    ));
  }
}
