import 'package:devs_team_test/ui/pages/gallery_page/widgets/blur_hash_image.dart';
import 'package:flutter/material.dart';

import 'big_image_pop_up.dart';

class BigImagePopUpWidget extends StatelessWidget {
  final BigImagePopUp dialogData;

  const BigImagePopUpWidget({Key key, this.dialogData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlurHashImage(
        image: dialogData.imageUrl,
        blurHash: dialogData.blurHash,
        fit: BoxFit.contain,
      ),
    );
  }
}
