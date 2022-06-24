import 'package:equatable/equatable.dart';

class ApiProfile extends Equatable{
  final int id;
  final String nickname;
  final double rating;
  final int dealsCompleted;

  ApiProfile({
    required this.id,
    required this.nickname,
    required this.rating,
    required this.dealsCompleted,
  });

  ApiProfile.fromApi(Map<String, dynamic> map)
      : id = map['id'],
        nickname = map['nickname'],
        rating = map['rating'],
        dealsCompleted = map['dealsCompleted'];

  Map<String, dynamic> toApi() {
    return {
      'nickname': nickname,
      'rating': rating,
      'dealsCompleted': dealsCompleted,
    };
  }

  @override
  List<Object> get props => [id, nickname, rating, dealsCompleted];
}
