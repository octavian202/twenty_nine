import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  DateTime _currentDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: Colors.white,
          child: Material(
            color: Colors.white,
            child: Text(
              'Is it 8 December?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff313131),
                fontSize: 70,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: Material(
            color: Color(0xff313131),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                (_currentDateTime.month == 12 && _currentDateTime.day == 8 ? 'Yes' : 'No'),
                style: TextStyle(color: Colors.white, fontSize: 80),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
