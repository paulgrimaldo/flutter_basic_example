import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("Paul Grimaldo", "assets/img/paul_grimaldo.jpg"),
        Review("Paul Grimaldo", "assets/img/paul_grimaldo.jpg"),
        Review("Paul Grimaldo", "assets/img/paul_grimaldo.jpg"),
      ],
    );
  }
}
