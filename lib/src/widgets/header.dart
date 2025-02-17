import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key});

  final titleTextSyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);

  final subtitleTextSyle = TextStyle(
    color: Colors.white,
    fontSize: 25,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[850],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "One Piece",
                style: titleTextSyle,
              ),
              Text("serie", style: subtitleTextSyle),
            ],
          ),
          Row(children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                    icon: Icon(Icons.search, size: 28, color: Colors.white),
                    onPressed: () {})),
            const SizedBox(
              width: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                    icon: Icon(Icons.notifications,
                        size: 28, color: Colors.white),
                    onPressed: () {})),
          ])
        ],
      ),
    );
  }
}
