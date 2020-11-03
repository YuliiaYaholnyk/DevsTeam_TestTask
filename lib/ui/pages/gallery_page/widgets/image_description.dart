import 'package:devs_team_test/res/style/colors/colors.dart';
import 'package:devs_team_test/res/style/fonts/fonts.dart';

import 'package:flutter/material.dart';

class ImageDescription extends StatelessWidget {
  const ImageDescription({
    Key key,
    @required this.userPhotoUrl,
    @required this.userName,
    @required this.likes,
  }) : super(key: key);

  final String userPhotoUrl;
  final String userName;
  final String likes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: WHITE_60,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      height: 70.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userPhotoUrl),
            radius: 20.0,
          ),
          Flexible(
            child: Text(
              userName,
              style: Fonts.userNameTextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_border,
                size: 30.0,
                color: PASTEL_RED,
              ),
              Text(
                likes,
                style: Fonts.userNameTextStyle(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
