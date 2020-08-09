import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppFloatingActionButton();
}

class _AppFloatingActionButton extends State<AppFloatingActionButton> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fab",
      onPressed: onTapped,
      child: Icon(
        tapped ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }

  void onTapped() {
    setState(() {
      tapped = !this.tapped;
    });
    final tappedText = tapped ? "Added to favorites" : "Removed from favorites";
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(tappedText),
    ));
  }
}
