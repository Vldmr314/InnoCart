import 'package:equatable/equatable.dart';

class ApiOrder extends Equatable {
  final int id;
  final String productName;
  final double weight;
  final String description;
  final double price;
  final double reward;
  final String contacts;

  ApiOrder(
      {required this.id,
      required this.productName,
      required this.weight,
      required this.description,
      required this.price,
      required this.reward,
      required this.contacts});

  ApiOrder.fromApi(Map<String, dynamic> map)
      : id = map['id'],
        productName = map['productName'],
        weight = map['weight'],
        description = map['description'],
        price = map['price'],
        reward = map['reward'],
        contacts = map['contacts'];

  Map<String, dynamic> toApi() {
    return {
      'productName': productName,
      'weight': weight,
      'description': description,
      'price': price,
      'reward': reward,
      'contacts': contacts
    };
  }

  @override
  List<Object> get props =>
      [id, productName, weight, description, price, reward, contacts];
}
