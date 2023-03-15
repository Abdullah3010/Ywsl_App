class Order {
  final String id;
  final double quantity;
  final String description;
  final String type;
  final DateTime date;
  final String from;
  final String to;
  final String status;
  final double price;
  final double weight;
  final String? image;

  Order({
    required this.id,
    required this.quantity,
    required this.description,
    required this.type,
    required this.date,
    required this.from,
    required this.to,
    required this.status,
    required this.price,
    required this.weight,
    this.image,
  });
}
