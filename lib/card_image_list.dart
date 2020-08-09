import 'package:flutter/material.dart';
import 'package:trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/paul_grimaldo.jpg"),
          CardImage("assets/img/paul_grimaldo.jpg"),
          CardImage("assets/img/paul_grimaldo.jpg"),
          CardImage("assets/img/paul_grimaldo.jpg"),
        ],
      ),
    );
  }
}
