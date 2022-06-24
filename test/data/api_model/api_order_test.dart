import 'package:flutter_test/flutter_test.dart';
import 'package:innocart_front/data/api/model/api_order.dart';

void main() {
  group('ApiOrder', () {
    test('fromApi', () {
      Map<String, dynamic> api = {'id': 1, 'productName': 'Pizza',
        'weight': 12.0,
        'description': 'Nice pizza',
        'price': 999.99,
        'reward': 1.999,
        'contacts': '@Vldmr11'};

      ApiOrder apiOrder = ApiOrder(id: 1,
          productName: 'Pizza',
          weight: 12.0,
          description: 'Nice pizza',
          price: 999.99,
          reward: 1.999,
          contacts: '@Vldmr11');

      expect(ApiOrder.fromApi(api), apiOrder);
    });

    test('toApi', () {
      Map<String, dynamic> api = {'productName': 'Pizza',
        'weight': 12.0,
        'description': 'Nice pizza',
        'price': 999.99,
        'reward': 1.999,
        'contacts': '@Vldmr11'};

      ApiOrder apiOrder = ApiOrder(id: 1,
          productName: 'Pizza',
          weight: 12.0,
          description: 'Nice pizza',
          price: 999.99,
          reward: 1.999,
          contacts: '@Vldmr11');

      expect(apiOrder.toApi(), api);
    });
  });
}