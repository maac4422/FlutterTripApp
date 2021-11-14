import 'package:flutter/material.dart';
import 'large_button.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final starBorder = Container(
      margin: EdgeInsets.only(
          top: 323.00,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(
          top: 323.00,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.00,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final descriptionDummy = "orem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu ante viverra, hendrerit dolor ac, scelerisque nunc. Sed a ullamcorper arcu. Etiam posuere ultrices tortor eget dictum. Aliquam mattis est non nibh vehicula, a cursus ex aliquet. Fusce bibendum elit eu finibus feugiat. Praesent ligula purus, aliquet scelerisque posuere ut, blandit ac mi. Suspendisse rhoncus justo quis turpis bibendum, at ultricies enim semper. Fusce et felis et lectus vehicula auctor ut sagittis eros. Praesent porttitor dolor ut magna faucibus mollis a eu orci.";
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        textAlign: TextAlign.left
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        LargeButton("Navigate")
      ],
    );
  }
}