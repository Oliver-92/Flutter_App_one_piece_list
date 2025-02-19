import 'package:flutter/material.dart';
import 'package:flutter_app_04/src/animations/fade_animation.dart';
import '../widgets/blur_container.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.image,
    required this.name,
  });

  final int color;
  final String image;
  final String name;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double heightScreen = 0;

  @override
  Widget build(BuildContext context) {

    heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(widget.color), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: heightScreen * 0.6,
                    child: Hero(
                      tag: widget.color,
                      child: Image.asset(
                        widget.image,
                      ),
                    ),
                  )),
              Positioned(
                bottom: 10,
                left: 10,
                child: FadeAnimation(
                  intervalEnd: 0.8,
                  child: BlurContainer(
                      child: Container(
                    width: 160,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withAlpha(50)),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )),
                ),
              )
            ]),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "${widget.name} #personaje",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: FadeAnimation(
                  intervalStart: 0.35,
                  child: Text(
                    "One Piece",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Eiichiro Oda",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Creador",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Japon",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "País",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            FadeAnimation(
              intervalStart: 0.5,
              child: GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Color(widget.color)),
                  child: Text(
                    "Volver",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
