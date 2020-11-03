import 'package:devs_team_test/helpers/http_helper.dart';
import 'package:devs_team_test/res/string_const.dart';

class ImageService {
  ImageService._privateConstructor();

  static final ImageService _instance = ImageService._privateConstructor();

  static ImageService get instance => _instance;

  Future<List<dynamic>> getImages() async {
    return await HttpHelper.instance.request(BASE_URL, HttpType.get);
  }
}
