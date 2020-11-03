import 'dart:collection';

import 'package:devs_team_test/store/app/reducer.dart';
import 'package:devs_team_test/store/dialog/dialog_actions.dart';

class DialogModuleState {
  DialogModuleState();

  factory DialogModuleState.initial() {
    return DialogModuleState();
  }

  DialogModuleState copyWith() {
    return DialogModuleState();
  }

  DialogModuleState reducer(dynamic action) {
    return Reducer<DialogModuleState>(
      actions: HashMap.from({
        ShowDialog: (dynamic action) => _showDialog(action as ShowDialog),
      }),
    ).updateState(action, this);
  }

  DialogModuleState _showDialog(ShowDialog action) {
    action.dialog.show();
    return this;
  }
}
