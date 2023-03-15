import 'package:flutter/material.dart';
import 'package:ywsl_app/shared/widget/rounded_botton.dart';

import '../../domain/entities/order_entity.dart';

class OrderDetails extends StatelessWidget {
  final Order order;

  const OrderDetails({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(order.type),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(order.from),
                      Text("--->"),
                      Text(order.to),
                    ],
                  ),
                ),
              ],
            ),
            Text(order.description),
            Container(
              height: 200,
              width: 200,
              color: Colors.amberAccent,
              // child: Image.network(
              //   order.image!,
              //   fit: BoxFit.cover,
              // ),
            ),
            Text("Quantity: ${order.quantity}"),
            Text("Weight: ${order.weight}Kg"),
            Text("Price: ${order.price}"),
            Center(
              child: RoundedButton(
                onPressed: () {},
                child: Text("Accept"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
