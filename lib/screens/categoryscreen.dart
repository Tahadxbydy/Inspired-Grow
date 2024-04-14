import 'package:baladisap/screens/productscreen.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'notificationScreen.dart';

class CategoryScreen extends StatelessWidget {
  // const CategoryScreen({super.key});
  static const routename = 'CategoryScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Color(0xffF0F0F1),
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset('assets/homescreen/logo_image.png'),
        title: Column(
          children: [
            const FittedBox(child: Text('Inspired Grow')),
            Container(
              width: sizeH * 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sizeH * 9),
                color: kContainerColor,
              ),
              padding: EdgeInsets.all(sizeH * 1),
              child: Center(
                child: Text(
                  "Grocery on wheel’s",
                  style: TextStyle(fontSize: sizeH * 3, color: Colors.white70),
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NotificationScreen.routename);
              },
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, WishListScreen.routename);
              },
              icon: const Icon(Icons.shopping_cart_outlined)),
          CircleAvatar(
            child: Image.asset('assets/homescreen/user_avatar.png'),
          ),
          SizedBox(
            width: sizeV * 2,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(sizeH * 3),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: kSecondaryColor,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    )),
                title: Text(
                  'Your Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '32 Llanberis Close, Tonteg, CF38 1HR',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  labelText: 'Search Anything',
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: sizeV * 3),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Catagory',
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 1.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Fruits & Vegetables'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 2.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Breakfast'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sizeV * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 3.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Beverages'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 4.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Meat & Fish'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sizeV * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 5.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Snacks'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 6.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Dairy'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sizeV * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 7.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Fruits & Vegetables'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 8.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Breakfast'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sizeV * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.asset('assets/fruits/fruit 9.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Beverages'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                      'assets/fruits/fruit 10.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Meat & Fish'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: sizeV * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                      'assets/fruits/fruit 11.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Snacks'),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, CatagoryProduct.routename);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: sizeV * 20,
                          width: sizeH * 40,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                      'assets/fruits/fruit 12.png')),
                              Padding(
                                padding: EdgeInsets.all(sizeV * 1),
                                child: Text('Dairy'),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
