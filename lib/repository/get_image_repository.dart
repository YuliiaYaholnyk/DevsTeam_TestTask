import 'package:devs_team_test/dto/image_dto.dart';
import 'package:devs_team_test/service/image_service.dart';

class GetImageRepository {
  GetImageRepository._privateConstructor();

  static final GetImageRepository _instance =
      GetImageRepository._privateConstructor();

  static GetImageRepository get instance => _instance;

  Future<List<ImageDto>> getImages() async {
    return await ImageService.instance
        .getImages()
        .then((List<dynamic> response) {
      List<ImageDto> images = List();
      response.forEach((element) {
        images.add(ImageDto.fromJson(element));
      });
      return images;
    });
  }
}
