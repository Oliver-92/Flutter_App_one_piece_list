import 'package:flutter/material.dart';

import '../widgets/blur_container.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image, required this.name});

  final int color;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(color), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: 500,
                    child: Image.asset(
                      image,
                    ),
                  )),
              Positioned(
                bottom: 10,
                left: 10,
                child: BlurContainer(child: Container(
                  width: 160,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withAlpha(50)
                  ),
                  child: Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                )),
              )
            ])
          ]),
        ));
  }
}
