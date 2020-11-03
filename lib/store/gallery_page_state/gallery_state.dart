import 'dart:collection';

import 'package:devs_team_test/dto/image_dto.dart';
import 'package:devs_team_test/store/app/reducer.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_actions.dart';

class GalleryState {
  final List<ImageDto> gallery;

  GalleryState({
    this.gallery,
  });

  factory GalleryState.initial() {
    return GalleryState(
      gallery: List(),
    );
  }

  GalleryState copyWith({List<ImageDto> gallery, ImageDto selectedImage}) {
    return GalleryState(
      gallery: gallery ?? this.gallery,
    );
  }

  GalleryState reducer(dynamic action) {
    return Reducer<GalleryState>(
      actions: HashMap.from({
        SetGalleryAction: (dynamic action) =>
            _setGallery(action as SetGalleryAction),
      }),
    ).updateState(action, this);
  }

  GalleryState _setGallery(SetGalleryAction action) {
    return copyWith(gallery: action.gallery);
  }
}
