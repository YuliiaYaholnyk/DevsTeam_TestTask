import 'package:devs_team_test/dto/image_dto.dart';
import 'package:devs_team_test/repository/get_image_repository.dart';
import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_actions.dart';

import 'package:redux_epics/redux_epics.dart';

import 'package:rxdart/rxdart.dart';

class GalleryEpics {
  static final indexEpic = combineEpics<AppState>([
    getGallery,
  ]);

  static Stream<dynamic> getGallery(
      Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<DownloadGallery>().switchMap(
      (action) {
        return Stream.fromFuture(
          GetImageRepository.instance.getImages().then(
            (List<ImageDto> gallery) {
              return SetGalleryAction(gallery: gallery);
            },
          ),
        );
      },
    );
  }
}
