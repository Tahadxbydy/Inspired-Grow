import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class OrderListTile extends StatelessWidget {
  OrderListTile({
    super.key,
    required this.title,
    required this.delivery,
    required this.date,
    required this.price,
  });

  final String title;
  final String date;
  final bool delivery;
  final int price;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeV * 2),
      child: ListTile(
        leading: CircleAvatar(
          radius: sizeH * 6,
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          child: Icon(
            Icons.shopping_basket_outlined,
            size: sizeH * 8,
          ),
        ),
        title: Text(
          title,
          textScaleFactor: 1.1,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            delivery
                ? Text(
                    'Delivered',
                    style: TextStyle(color: Colors.green),
                  )
                : Text(
                    'Cancelled',
                    style: TextStyle(color: Colors.red),
                  ),
            Text(date),
          ],
        ),
        trailing: Text(
          '৳$price',
          textScaleFactor: 1.7,
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
