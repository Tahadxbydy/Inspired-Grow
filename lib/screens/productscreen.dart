import 'package:baladisap/controller/productcontroller.dart';
import 'package:baladisap/screens/notificationScreen.dart';
import 'package:baladisap/screens/productdetailsscreen.dart';
import 'package:baladisap/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../model/items_model.dart';
import '../size_config.dart';
import '../widgets/itemscardwidget.dart';
import 'CartScreen.dart';

class ProductScreen extends StatelessWidget {
  // const ProductScreen({super.key});
  static const routename = 'ProductScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("All item’s"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, WishListScreen.routename);
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SizedBox(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 3.8,
                crossAxisSpacing: sizeH * 2,
                mainAxisSpacing: sizeV * 2),
            itemCount: itemlist.length,
            // scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyCartScreen.routename),
                child: ItemsCard(
                  imagepath: itemlist[index].imagepath,
                  title: itemlist[index].title,
                  discountprice: itemlist[index].discountprice,
                  price: itemlist[index].price,
                ),
              );
            }),
      ),
    );
  }
}

class CatagoryProduct extends StatelessWidget {
  // const ProductScreen({super.key});
  static const routename = 'CatagoryProduct';
  final Productscontroller productscontroller = Get.put(Productscontroller());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Text("Product  item’s"),
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
          padding: EdgeInsets.all(sizeH * 3),
          child: Obx(() {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: productscontroller.productlist.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text('myProducts[index]["name"]'),
                  );
                });
          }),
        ));
  }
}
