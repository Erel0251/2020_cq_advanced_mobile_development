import 'package:test_route/models/tutor/account_info.dart';

class FavoriteTutor {
  final String id;
  final String firstId;
  final String secondId;
  final String createdAt;
  final String updatedAt;
  final AccountInfo? secondInfo;

  const FavoriteTutor({
    required this.id,
    required this.firstId,
    required this.secondId,
    required this.createdAt,
    required this.updatedAt,
    this.secondInfo,
  });

  factory FavoriteTutor.fromJson(Map<String, dynamic> json) {
    return FavoriteTutor(
      id: json['id'],
      firstId: json['firstId'],
      secondId: json['secondId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      secondInfo: json['secondInfo'] != null
          ? AccountInfo.fromJson(json['secondInfo'])
          : null,
    );
  }
}
