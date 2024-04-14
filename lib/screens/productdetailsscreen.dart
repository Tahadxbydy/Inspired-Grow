import 'package:baladisap/constants.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';
import 'CartScreen.dart';
import 'notificationScreen.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({super.key});
  static const routename = 'ProductDetailScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Product Detail's")),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NotificationScreen.routename);
              },
              icon: Icon(Icons.notifications_none)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, WishListScreen.routename);
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeH * 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Image.asset('assets/Rectangle 1.png')),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Image.asset('assets/Rectangle 32.png'),
                  SizedBox(width: sizeV * 2),
                  Image.asset('assets/Rectangle 33.png'),
                ],
              ),
              SizedBox(
                height: sizeV * 2,
              ),
              Text('Arla DANO Full Cream Milk Powder Instant',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: sizeV * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 KG',
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '৳182',
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: sizeV * 3,
              ),
              Row(
                // direction: Axis.horizontal,
                children: [
                  SvgPicture.asset('assets/logo/query_builder_24px copy.svg'),
                  SizedBox(
                    width: sizeH * 1,
                  ),
                  Text('Dairy Products'),
                ],
              ),
              SizedBox(
                height: sizeV * 3,
              ),
              Text(
                'The Best item’s for Dairy Product. The India’s no 1 Selling brand for Milk powder. It’s more nourishing and more healthy for everyone.',
                textScaleFactor: 1.13,
                style: TextStyle(
                  wordSpacing: sizeV * 0.1,
                ),
              ),
              SizedBox(
                height: sizeV * 3,
              ),
              Text('You can also check this items'),
              SizedBox(
                height: sizeV * 3,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyCartScreen.routename),
                child: ListTile(
                  leading: Image.asset('assets/Nido.png'),
                  title: Text(
                    'Nestle Nido Full Cream Milk Powder Instant',
                    softWrap: true,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '৳342',
                        style: TextStyle(
                            color: Theme.of(context).hintColor,
                            decoration: TextDecoration.lineThrough),
                      ),
                      Text(
                        '৳270',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 3,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyCartScreen.routename),
                child: ListTile(
                  leading: Image.asset(
                    'assets/dano.png',
                  ),
                  title: Text(
                    'Nestle Nido Full Cream Milk Powder Instant',
                    softWrap: true,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '৳342',
                        style: TextStyle(
                            color: Theme.of(context).hintColor,
                            decoration: TextDecoration.lineThrough),
                      ),
                      Text(
                        '৳270',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sizeV * 3,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyCartScreen.routename);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text('Add to Cart  '),
                        Icon(Icons.shopping_bag_outlined)
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
