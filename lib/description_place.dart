import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/app_button.dart';

class DescriptionPlace extends StatelessWidget {
  final String placeName;
  final String placeDescription;

  DescriptionPlace(this.placeName, this.placeDescription);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        placeDescription,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
          fontFamily: "Lato",
        ),
      ),
    );
    final mainRow = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            placeName,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            getStar(Icons.star),
            getStar(Icons.star),
            getStar(Icons.star),
            getStar(Icons.star_half),
            getStar(Icons.star_border),
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        mainRow,
        description,
        AppButton("Navigate"),
      ],
    );
  }

  Widget getStar(IconData iconData) {
    return Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        iconData,
        color: Colors.yellow,
      ),
    );
  }
}
