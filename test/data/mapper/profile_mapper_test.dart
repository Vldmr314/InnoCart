import 'package:flutter_test/flutter_test.dart';
import 'package:innocart_front/data/api/model/api_profile.dart';
import 'package:innocart_front/data/mapper/profile_mapper.dart';
import 'package:innocart_front/domain/model/profile.dart';

void main() {
  group('ApiProfile', () {
    test('fromApi', () {
      Profile profile = Profile(id: 1,
          nickname: 'Vanya',
          rating: 5.0,
          dealsCompleted: 3);

      ApiProfile apiProfile = ApiProfile(id: 1,
          nickname: 'Vanya',
          rating: 5.0,
          dealsCompleted: 3);

      expect(ProfileMapper.fromApi(apiProfile), profile);
    });

    test('toApi', () {
      Profile profile = Profile(id: 1,
          nickname: 'Vanya',
          rating: 5.0,
          dealsCompleted: 3);

      ApiProfile apiProfile = ApiProfile(id: 1,
          nickname: 'Vanya',
          rating: 5.0,
          dealsCompleted: 3);

      expect(ProfileMapper.toApi(profile), apiProfile);
    });
  });
}