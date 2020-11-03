import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/store/dialog/dialog_actions.dart';
import 'package:devs_team_test/ui/dialogs/big_image_pop_up.dart';

import 'package:redux/redux.dart';

class DialogSelectors {
  static const String TAG = '[DialogSelectors]';

  static void Function(String blurHash, String url) showBigImagePopUp(
      Store<AppState> store) {
    return (String blurHash, String url) => store.dispatch(
          ShowDialog(
            dialog: BigImagePopUp(
              blurHash: blurHash,
              imageUrl: url,
            ),
          ),
        );
  }
}
