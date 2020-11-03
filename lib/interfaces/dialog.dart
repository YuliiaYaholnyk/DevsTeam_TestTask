import 'package:devs_team_test/helpers/pop_up_helper.dart';
import 'package:flutter/widgets.dart';

abstract class Dialog {
  Widget widget();

  void show() {
    PopupHelper.instance.show(this);
  }
}

