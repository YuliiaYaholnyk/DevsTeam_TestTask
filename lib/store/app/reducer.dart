import 'dart:collection';

import 'package:flutter/foundation.dart';

class Reducer<T> {
  // ignore: non_constant_identifier_names
  final String TAG = '[Reducer<$T>]';
  HashMap<dynamic, T Function(dynamic)> actions;

  Reducer({
    @required this.actions,
  }) {
    actions.forEach((key, value) {
      if (value == null) throw ('All Functions must be initialize');
    });
  }

  T updateState(dynamic action, T state) {
    if (actions.containsKey(action.runtimeType)) {
      return actions[action.runtimeType](action);
    }
    return state;
  }
}
