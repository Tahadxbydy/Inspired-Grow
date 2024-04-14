import 'package:baladisap/screens/productdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class CartScreen2 extends StatelessWidget {
  // const CartScreen2({super.key});
  static const routename = 'CartScreen2';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 6,
              margin: EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.all(sizeH * 5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/logo/van.svg',
                      color: kSecondaryColor,
                    ),
                    SizedBox(
                      width: sizeV * 3,
                    ),
                    const FittedBox(
                      child: Text(
                        'Van available in 15 minutes',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sizeV * 3,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(sizeV * 3),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order ID # 123456',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'assets/Rectangle 1.png',
                // width: sizeH * 30,
              ),
              title: Text('Dano Full Cream 1kg + 1 more'),
              subtitle: Padding(
                padding: EdgeInsets.all(sizeH * 2),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '৳270',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: sizeH * 4,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(width: 2, color: kPrimaryColor)),
                          height: sizeV * 4,
                          width: sizeH * 50,
                          child: Center(
                              child: Text(
                            'Order list',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: sizeH * 4,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Row(
              children: [
                SizedBox(width: sizeH * 1),
                Icon(
                  Icons.circle_outlined,
                  color: kPrimaryColor,
                  size: 30,
                ),
                SizedBox(width: sizeH * 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Confirmed',
                      textScaleFactor: 1.25,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mon, 06th Mar, 09:12 AM',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: sizeH * 4.2,
                top: 0,
                bottom: 0,
              ),
              height: sizeV * 8,
              width: sizeH * 1,
              color: kPrimaryColor,
            ),
            Row(
              children: [
                SizedBox(width: sizeH * 1),
                Icon(
                  Icons.circle_outlined,
                  color: kPrimaryColor,
                  size: 30,
                ),
                SizedBox(width: sizeH * 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Out for delivery',
                      textScaleFactor: 1.25,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mon, 06th Mar, 09:12 AM',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: sizeH * 4.2),
              height: sizeV * 8,
              width: sizeH * 1,
              color: Colors.grey[400],
            ),
            Row(
              children: [
                SizedBox(width: sizeH * 1),
                Icon(
                  Icons.circle_outlined,
                  color: Colors.grey[400],
                  size: 30,
                ),
                SizedBox(width: sizeH * 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivered',
                      textScaleFactor: 1.25,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'data',
                    //   style: TextStyle(color: Colors.grey),
                    // )
                  ],
                )
              ],
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 2, color: Colors.grey)),
                  height: sizeV * 5,
                  width: sizeH * 80,
                  child: Center(
                      child: Text(
                    'Download Invoice',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: sizeH * 4,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: sizeV * 1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Continue Ordering',
                    textScaleFactor: 1.25,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProductDetailScreen.routename);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: sizeV * 20,
                    width: sizeH * 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: kPrimaryColor)),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Image.asset(
                                'assets/itemsmodel/images (3).png')),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amazing Oats 1kg',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: sizeV * 1,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹ 76',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: sizeH * 4,
                                    ),
                                    Text(
                                      '₹ 140',
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ProductDetailScreen.routename);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: sizeV * 20,
                      width: sizeH * 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: kPrimaryColor)),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset(
                                  'assets/itemsmodel/images (4).png')),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Breakfast Oats1Kg',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: sizeV * 1,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '₹ 176',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: sizeH * 4,
                                      ),
                                      Text(
                                        '₹ 240',
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
