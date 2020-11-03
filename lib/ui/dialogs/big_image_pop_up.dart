import 'package:devs_team_test/helpers/pop_up_helper.dart';
import 'package:devs_team_test/interfaces/dialog.dart' as dialog;
import 'package:devs_team_test/ui/dialogs/big_image_pop_up_widget.dart';

import 'package:flutter/material.dart';

class BigImagePopUp extends dialog.Dialog {
  final String blurHash;
  final String imageUrl;

  BigImagePopUp({
    this.blurHash,
    this.imageUrl,
  });

  @override
  Widget widget() => BigImagePopUpWidget(dialogData: this);

  @override
  void show() => PopupHelper.instance.show(this);
}
