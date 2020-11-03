import 'package:flutter/foundation.dart';

class ProfileImageDto {
  final String small;
  final String medium;
  final String large;

  ProfileImageDto({
    @required this.large,
    @required this.medium,
    @required this.small,
  });

  factory ProfileImageDto.fromJson(Map<String, dynamic> json) {
    return ProfileImageDto(
      small: json["small"],
      medium: json["medium"],
      large: json["large"],
    );
  }
}
