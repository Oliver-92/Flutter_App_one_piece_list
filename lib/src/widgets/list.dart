import 'package:flutter/material.dart';

import '../pages/detail_page.dart';

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
    screenWidth = MediaQuery.of(context).size.width - 10;

    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Text(
            "Portada",
            style: titleTextSyle,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardsFront("p1.jpg", "One Piece", "2018"),
              SizedBox(
                width: 10,
              ),
              cardsFront("p2.jpg", "One Piece", "2022"),
              SizedBox(
                width: 10,
              ),
              cardsFront("p3.jpg", "One Piece", "2023"),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          cardsCharacters("Brook", 0xff4913C4, "o1.png"),
          cardsCharacters("Luffy", 0xffF82A2D, "o2.png"),
          cardsCharacters("Portgas D. Ace", 0xffFFCB28, "o3.png"),
          cardsCharacters("Boa Hancock", 0xffFE4649, "o4.png"),
          cardsCharacters("Boa Hancock", 0xffDF1C6A, "o5.png"),
          cardsCharacters("Roronoa Zoro", 0xff21E295, "o6.png"),
        ],
      ),
    );
  }

  Widget cardsCharacters(String name, int color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => DetailPage(color: color, image: image, name: name))));
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(66, 43, 43, 43),
          ),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(color),
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 3,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/$image"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded, color: Colors.grey))
            ],
          )),
    );
  }

  Widget cardsFront(String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/$image",
            width: screenWidth * 0.31,
            height: screenWidth * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(fontSize: 14, color: Colors.white70),
                children: [
              TextSpan(
                  text: subtitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
