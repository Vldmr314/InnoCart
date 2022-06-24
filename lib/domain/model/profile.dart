import 'package:equatable/equatable.dart';

class Profile extends Equatable{
  final int id;
  final String nickname;
  final double rating;
  final int dealsCompleted;

  Profile({
    required this.id,
    required this.nickname,
    required this.rating,
    required this.dealsCompleted,
  });

  @override
  List<Object> get props => [id, nickname, rating, dealsCompleted];
}
