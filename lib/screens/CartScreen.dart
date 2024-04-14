import 'package:baladisap/screens/paymentmethodscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class MyCartScreen extends StatefulWidget {
  // MyCartScreen({super.key});
  static const routename = 'MyCartScreen';

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int quantity = 0;
  int quantity2 = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Cart')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sizeV * 2,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: sizeV * 3,
                ),
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
            SizedBox(height: sizeV * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.all(sizeV * 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 2, color: kSecondaryColor)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.gps_fixed,
                        ),
                        Text(
                          '123, Sector 18A, Chandi road',
                          style: TextStyle(color: kSecondaryColor),
                        ),
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, WishListScreen.routename);
                  },
                  child: Container(
                    height: sizeV * 4,
                    // width: sizeH * 30,
                    padding: EdgeInsets.all(sizeH * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kSecondaryColor),
                    child: const Text(
                      'Book Van',
                      style: TextStyle(color: kTextWhiteColor),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: ListTile(
                  leading: Image.asset(
                    'assets/shopping-bag 1.png',
                    width: sizeH * 15,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dano Full Cream1kg'),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '৳22  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor)),
                          TextSpan(
                              text: ' ৳32',
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              )),
                        ]),
                      )
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1kg * 22.00'),
                      buildQuantityBar(sizeH),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: ListTile(
                  leading: Image.asset(
                    'assets/Rectangle 34 (3).png',
                    width: sizeH * 15,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nestle Classic Coffee Jar'),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '৳90  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor)),
                          TextSpan(
                              text: ' ৳122',
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              )),
                        ]),
                      )
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('50gm * 90.00'),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: IconButton(
                                iconSize: sizeH * 3,
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    quantity2--;
                                  });
                                },
                              ),
                            ),
                            Text(quantity2.toString()),
                            IconButton(
                              iconSize: sizeH * 3,
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  quantity2++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '৳149',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charges:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '৳18',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '৳108',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(sizeH * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '৳149',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green[100],
              padding: EdgeInsets.all(sizeH * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Total Savings:',
                    style: TextStyle(
                      color: Colors.green[400],
                    ),
                  ),
                  Text(
                    '৳119',
                    style: TextStyle(
                        color: Colors.green[400], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: sizeV * 1),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Before checkout',
                    textScaleFactor: 1.25,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Row(
              children: [
                Container(
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
                          child:
                              Image.asset('assets/itemsmodel/images (3).png')),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  'Amazing Oats 1kg',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
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
                                  Center(
                                    child: Text(
                                      '₹ 140',
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
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
                Container(
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
                          child:
                              Image.asset('assets/itemsmodel/images (4).png')),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                                        decoration: TextDecoration.lineThrough),
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
              ],
            ),
            SizedBox(
              height: sizeV * 2,
            ),
            Card(
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Item (2)',
                      ),
                      SizedBox(
                        height: sizeH * 1,
                      ),
                      Text('Total Amount  ৳149',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, PaymentMethodScreen.routename);
                      },
                      child: Text('Checkout'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  dynamic buildQuantityBar(double h) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: IconButton(
              iconSize: h * 3,
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  quantity--;
                });
              },
            ),
          ),
          Text(quantity.toString()),
          IconButton(
            iconSize: h * 3,
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
          ),
        ],
      ),
    );
  }
}
