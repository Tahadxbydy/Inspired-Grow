import 'package:baladisap/screens/CartScreen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ItemsCard extends StatelessWidget {
  final String title;
  final int price;
  final int? discountprice;
  final String imagepath;
  const ItemsCard(
      {required this.title,
      required this.price,
      this.discountprice,
      required this.imagepath});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: sizeV * 30,
      width: sizeH * 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: kPrimaryColor)),
      child: Column(
        children: [
          Expanded(child: Image.asset(imagepath)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sizeV * 1,
                  ),
                  Row(
                    children: [
                      Text(
                        '₹ $price',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: sizeH * 4,
                      ),
                      Text(
                        '₹ $discountprice',
                        style: TextStyle(
                            color: Theme.of(context).hintColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyCartScreen.routename);
                        },
                        child: const Text('Add to Cart'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
