import 'package:flutter/material.dart';
import 'package:trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Santa Cruz", "Bolivia"),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
