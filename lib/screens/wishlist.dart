import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'notificationScreen.dart';

class WishListScreen extends StatelessWidget {
  // const WishListScreen({super.key});
  static const routename = 'WishListScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final sizeH = SizeConfig.blockSizeH!;
    final sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('wish list'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, NotificationScreen.routename);
                },
                icon: Icon(Icons.notifications_none)),
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/Rectangle 34 (2).png',
                width: sizeH * 30,
              ),
              title: Text('Nestle vermicelli Full Pack'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: sizeV * 0.5),
                    child: Text(
                      '৳342',
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Text(
                    '৳160',
                    style: TextStyle(color: kPrimaryColor, fontSize: sizeH * 4),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Rectangle 1.png',
                width: sizeH * 30,
              ),
              title: Text('Nestle Dano Full Cream Milk Powder Instant'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: sizeV * 0.5),
                    child: Text(
                      '৳342',
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Text(
                    '৳270',
                    style: TextStyle(color: kPrimaryColor, fontSize: sizeH * 4),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Rectangle 34 (3).png',
                width: sizeH * 30,
              ),
              title: Text('Nestle Classic Coffee Jar - 50gm'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: sizeV * 0.5),
                    child: Text(
                      '৳342',
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Text(
                    '৳90',
                    style: TextStyle(color: kPrimaryColor, fontSize: sizeH * 4),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Rectangle 34 (1).png',
                width: sizeH * 30,
              ),
              title: Text('Akher Chini (Deshi Sugar) – 1kg'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: sizeV * 0.5),
                    child: Text(
                      '৳142',
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Text(
                    '৳60',
                    style: TextStyle(color: kPrimaryColor, fontSize: sizeH * 4),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
