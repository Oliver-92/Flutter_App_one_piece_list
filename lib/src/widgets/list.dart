import 'package:flutter/material.dart';

class ListCharacters extends StatefulWidget {
  const ListCharacters({super.key});

  @override
  State<ListCharacters> createState() => _ListCharacterstState();
}

class _ListCharacterstState extends State<ListCharacters> {

  double screenWidth = 0;

  final titleTextSyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width-10;

    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Text("Portada", style: titleTextSyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            cardsFront("p1.jpg", "One Piece", "Serie"),
            SizedBox(width: 10,),
            cardsFront("p2.jpg", "One Piece", "Serie"),
            SizedBox(width: 10,),
            cardsFront("p3.jpg", "One Piece", "Serie"),
            SizedBox(width: 10,),
          ],)
        ],
      ),
    );
  }

  Column cardsFront (String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/$image", width: screenWidth*0.31, height: screenWidth*0.3,
          fit: BoxFit.cover,),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
