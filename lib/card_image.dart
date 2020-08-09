import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/app_floating_action_button.dart';

class CardImage extends StatelessWidget {
  final String imagePath;

  CardImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 7),
          )
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        AppFloatingActionButton(),
      ],
    );
  }
}
