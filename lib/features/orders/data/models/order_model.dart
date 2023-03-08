import 'package:ywsl_app/features/orders/domain/entities/order_entity.dart';

class OrderModel extends Order {
  OrderModel({
    required super.id,
    required super.name,
    required super.description,
    required super.date,
    required super.from,
    required super.to,
    required super.price,
    super.status = 'pending',
    
  });
}
