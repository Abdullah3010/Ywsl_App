import 'package:flutter/material.dart';
import 'package:ywsl_app/features/orders/data/models/order_model.dart';

import '../widgets/order_widget.dart';

class ListOfOrders extends StatelessWidget {
  ListOfOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return OrderWidget(
            order: OrderModel(
              id: "1",
              name: "first",
              description: "description",
              date: DateTime.now(),
              from: "Helwan",
              to: "Cairo",
              status: "status",
              price: 100,
            ),
          );
        },
      ),
    );
  }
}
