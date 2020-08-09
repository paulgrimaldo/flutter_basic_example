import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String username;
  final String imagePath;
  final String details = "1 review 5 photos";
  final String comment = "Lorem ipsum";

  Review(this.username, this.imagePath);

  @override
  Widget build(BuildContext context) {
    final username = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        this.username,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        username,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
