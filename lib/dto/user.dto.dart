import 'package:flutter/foundation.dart';

import 'package:devs_team_test/dto/profile_image_dto.dart';

class UserDto {
  final String id;
  final String userName;
  final String name;
  final String firstName;
  final String lastName;
  final String twitterUserName;
  final String bio;
  final String location;
  final String instagramUserName;
  final int totalCollections;
  final int totalLikes;
  final int totalPhotos;
  final String portfolioUrl;
  final ProfileImageDto profileImageDto;

  UserDto({
    @required this.id,
    @required this.userName,
    @required this.name,
    @required this.firstName,
    @required this.lastName,
    @required this.twitterUserName,
    @required this.bio,
    @required this.location,
    @required this.instagramUserName,
    @required this.totalCollections,
    @required this.totalLikes,
    @required this.totalPhotos,
    @required this.portfolioUrl,
    @required this.profileImageDto,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json["id"],
      userName: json["username"],
      name: json["name"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      twitterUserName: json["twitter_username"],
      bio: json["bio"],
      location: json["location"],
      instagramUserName: json["instagram_username"],
      totalCollections: json["total_collections"],
      totalLikes: json["total_likes"],
      totalPhotos: json["total_photos"],
      portfolioUrl: json["portfolio_url"],
      profileImageDto: ProfileImageDto.fromJson(json["profile_image"]),
    );
  }
}
