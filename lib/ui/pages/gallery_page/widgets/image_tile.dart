import 'package:devs_team_test/helpers/get_random_margin.dart';
import 'package:devs_team_test/ui/pages/gallery_page/widgets/image_description.dart';

import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imageUrl;
  final String userPhotoUrl;
  final String userName;
  final int likes;

  const ImageTile(
      {Key key, this.imageUrl, this.userPhotoUrl, this.userName, this.likes,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            children: [
              Container(
                constraints:
                BoxConstraints(minHeight: 200.0),
                child: Image(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: ImageDescription(userPhotoUrl: userPhotoUrl,
                  userName: userName,
                  likes: '$likes',),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getRandomMargin(),
        )
      ],
    );
  }
}

