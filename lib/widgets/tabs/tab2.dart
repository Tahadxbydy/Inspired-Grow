import 'package:flutter/material.dart';

import '../orderListTile.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        OrderListTile(
          title: 'Order #345',
          delivery: true,
          date: 'October 26, 2023',
          price: 700,
        ),
        OrderListTile(
          title: 'Order #345',
          delivery: false,
          date: 'October 26, 2023',
          price: 452,
        ),
        OrderListTile(
          title: 'Order #345',
          delivery: true,
          date: 'October 26, 2023',
          price: 281,
        ),
      ],
    );
  }
}
