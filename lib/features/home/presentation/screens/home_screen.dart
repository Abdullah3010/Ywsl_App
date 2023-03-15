import 'package:flutter/material.dart';
import 'package:ywsl_app/features/orders/presentation/screens/add_order.dart';
import 'package:ywsl_app/shared/widget/rounded_botton.dart';

import '../../../orders/presentation/screens/list_of_orders.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundedButton(
              child: Text('wasly'),
              borderRadius: 20,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1,
              ),
              width: MediaQuery.of(context).size.width * 0.4,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AddOrder(),
                  ),
                );
              },
            ),
            RoundedButton(
              child: Text('Orders'),
              borderRadius: 20,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1,
              ),
              width: MediaQuery.of(context).size.width * 0.4,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListOfOrders(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
