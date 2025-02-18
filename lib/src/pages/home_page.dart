import 'package:flutter/material.dart';
import 'package:flutter_app_04/src/widgets/header.dart';
import 'package:flutter_app_04/src/widgets/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withAlpha(500),
      body: Column(
        children: <Widget>[
          Header(),
          ListCharacters(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 95, 25, 208),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          
        ),
      ),
    );
  }
}
