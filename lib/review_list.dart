import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Review("assets/img/person.jpeg", "Miguel", "1 review", "Amazing!!!"),
        Review("assets/img/girl.jpg", "Sara", "10 reviews", "Need to go")
      ],
    );
  }

}